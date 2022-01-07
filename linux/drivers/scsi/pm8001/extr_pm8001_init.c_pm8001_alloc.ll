; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_10__*, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32*, i32*, i64, i64, i32 }
%struct.TYPE_7__ = type { i32, i64, i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.pci_device_id = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"pm8001_alloc: PHY:%x\0A\00", align 1
@PM8001_MAX_CCB = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AAP1 = common dso_local global i64 0, align 8
@PM8001_EVENT_LOG_SIZE = common dso_local global i8* null, align 8
@IOP = common dso_local global i64 0, align 8
@PM8001_MAX_SPCV_INB_NUM = common dso_local global i32 0, align 4
@CI = common dso_local global i32 0, align 4
@chip_8001 = common dso_local global i64 0, align 8
@PM8001_MPI_QUEUE = common dso_local global i32 0, align 4
@IB = common dso_local global i32 0, align 4
@PM8001_MAX_SPCV_OUTB_NUM = common dso_local global i32 0, align 4
@PI = common dso_local global i32 0, align 4
@OB = common dso_local global i32 0, align 4
@NVMD = common dso_local global i64 0, align 8
@DEV_MEM = common dso_local global i64 0, align 8
@PM8001_MAX_DEVICES = common dso_local global i32 0, align 4
@CCB_MEM = common dso_local global i64 0, align 8
@FW_FLASH = common dso_local global i64 0, align 8
@FORENSIC_MEM = common dso_local global i64 0, align 8
@USI_MAX_MEMCNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Mem%d alloc failed\0A\00", align 1
@SAS_PHY_UNUSED = common dso_local global i32 0, align 4
@PM8001F_INIT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*, %struct.pci_device_id*)* @pm8001_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_alloc(%struct.pm8001_hba_info* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pm8001_hba_info*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %7 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %8 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %7, i32 0, i32 10
  %9 = call i32 @spin_lock_init(i32* %8)
  %10 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %11 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %10, i32 0, i32 9
  %12 = call i32 @spin_lock_init(i32* %11)
  %13 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %14 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %15 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %14, i32 0, i32 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pm8001_printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %13, i32 %19)
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %62, %2
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %24 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %23, i32 0, i32 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %22, %27
  br i1 %28, label %29, label %65

29:                                               ; preds = %21
  %30 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @pm8001_phy_init(%struct.pm8001_hba_info* %30, i32 %31)
  %33 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %34 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %33, i32 0, i32 7
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %41 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %40, i32 0, i32 7
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %48 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %47, i32 0, i32 7
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %55 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %54, i32 0, i32 7
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  br label %62

62:                                               ; preds = %29
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %21

65:                                               ; preds = %21
  %66 = load i32, i32* @PM8001_MAX_CCB, align 4
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i32 @kzalloc(i32 %66, i32 %67)
  %69 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %70 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 4
  %71 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %72 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %65
  br label %730

76:                                               ; preds = %65
  %77 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %78 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = load i64, i64* @AAP1, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  %84 = load i8*, i8** @PM8001_EVENT_LOG_SIZE, align 8
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %87 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = load i64, i64* @AAP1, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  store i32 %85, i32* %92, align 4
  %93 = load i8*, i8** @PM8001_EVENT_LOG_SIZE, align 8
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %96 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = load i64, i64* @AAP1, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  store i32 %94, i32* %101, align 8
  %102 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %103 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = load i64, i64* @AAP1, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 3
  store i32 32, i32* %108, align 4
  %109 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %110 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = load i64, i64* @IOP, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  store i32 1, i32* %115, align 8
  %116 = load i8*, i8** @PM8001_EVENT_LOG_SIZE, align 8
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %119 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = load i64, i64* @IOP, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  store i32 %117, i32* %124, align 4
  %125 = load i8*, i8** @PM8001_EVENT_LOG_SIZE, align 8
  %126 = ptrtoint i8* %125 to i32
  %127 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %128 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = load i64, i64* @IOP, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 2
  store i32 %126, i32* %133, align 8
  %134 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %135 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = load i64, i64* @IOP, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 3
  store i32 32, i32* %140, align 4
  store i32 0, i32* %6, align 4
  br label %141

141:                                              ; preds = %280, %76
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @PM8001_MAX_SPCV_INB_NUM, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %283

145:                                              ; preds = %141
  %146 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %147 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = load i32, i32* @CI, align 4
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  store i32 1, i32* %155, align 8
  %156 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %157 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = load i32, i32* @CI, align 4
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %160, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  store i32 4, i32* %165, align 4
  %166 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %167 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = load i32, i32* @CI, align 4
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %170, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 2
  store i32 4, i32* %175, align 8
  %176 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %177 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = load i32, i32* @CI, align 4
  %181 = load i32, i32* %6, align 4
  %182 = add nsw i32 %180, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 3
  store i32 4, i32* %185, align 4
  %186 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %187 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @chip_8001, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %235

191:                                              ; preds = %145
  %192 = load i32, i32* @PM8001_MPI_QUEUE, align 4
  %193 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %194 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %195, align 8
  %197 = load i32, i32* @IB, align 4
  %198 = load i32, i32* %6, align 4
  %199 = add nsw i32 %197, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  store i32 %192, i32* %202, align 8
  %203 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %204 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %205, align 8
  %207 = load i32, i32* @IB, align 4
  %208 = load i32, i32* %6, align 4
  %209 = add nsw i32 %207, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 1
  store i32 128, i32* %212, align 4
  %213 = load i32, i32* @PM8001_MPI_QUEUE, align 4
  %214 = mul nsw i32 %213, 128
  %215 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %216 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %217, align 8
  %219 = load i32, i32* @IB, align 4
  %220 = load i32, i32* %6, align 4
  %221 = add nsw i32 %219, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 2
  store i32 %214, i32* %224, align 8
  %225 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %226 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %227, align 8
  %229 = load i32, i32* @IB, align 4
  %230 = load i32, i32* %6, align 4
  %231 = add nsw i32 %229, %230
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 3
  store i32 128, i32* %234, align 4
  br label %279

235:                                              ; preds = %145
  %236 = load i32, i32* @PM8001_MPI_QUEUE, align 4
  %237 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %238 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %239, align 8
  %241 = load i32, i32* @IB, align 4
  %242 = load i32, i32* %6, align 4
  %243 = add nsw i32 %241, %242
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 0
  store i32 %236, i32* %246, align 8
  %247 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %248 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %249, align 8
  %251 = load i32, i32* @IB, align 4
  %252 = load i32, i32* %6, align 4
  %253 = add nsw i32 %251, %252
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 1
  store i32 64, i32* %256, align 4
  %257 = load i32, i32* @PM8001_MPI_QUEUE, align 4
  %258 = mul nsw i32 %257, 64
  %259 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %260 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %259, i32 0, i32 3
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %261, align 8
  %263 = load i32, i32* @IB, align 4
  %264 = load i32, i32* %6, align 4
  %265 = add nsw i32 %263, %264
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 2
  store i32 %258, i32* %268, align 8
  %269 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %270 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %271, align 8
  %273 = load i32, i32* @IB, align 4
  %274 = load i32, i32* %6, align 4
  %275 = add nsw i32 %273, %274
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 3
  store i32 64, i32* %278, align 4
  br label %279

279:                                              ; preds = %235, %191
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %6, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %6, align 4
  br label %141

283:                                              ; preds = %141
  store i32 0, i32* %6, align 4
  br label %284

284:                                              ; preds = %423, %283
  %285 = load i32, i32* %6, align 4
  %286 = load i32, i32* @PM8001_MAX_SPCV_OUTB_NUM, align 4
  %287 = icmp slt i32 %285, %286
  br i1 %287, label %288, label %426

288:                                              ; preds = %284
  %289 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %290 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %291, align 8
  %293 = load i32, i32* @PI, align 4
  %294 = load i32, i32* %6, align 4
  %295 = add nsw i32 %293, %294
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 0
  store i32 1, i32* %298, align 8
  %299 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %300 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %299, i32 0, i32 3
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 0
  %302 = load %struct.TYPE_8__*, %struct.TYPE_8__** %301, align 8
  %303 = load i32, i32* @PI, align 4
  %304 = load i32, i32* %6, align 4
  %305 = add nsw i32 %303, %304
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 1
  store i32 4, i32* %308, align 4
  %309 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %310 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %309, i32 0, i32 3
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 0
  %312 = load %struct.TYPE_8__*, %struct.TYPE_8__** %311, align 8
  %313 = load i32, i32* @PI, align 4
  %314 = load i32, i32* %6, align 4
  %315 = add nsw i32 %313, %314
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 2
  store i32 4, i32* %318, align 8
  %319 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %320 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %319, i32 0, i32 3
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i32 0, i32 0
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %321, align 8
  %323 = load i32, i32* @PI, align 4
  %324 = load i32, i32* %6, align 4
  %325 = add nsw i32 %323, %324
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %327, i32 0, i32 3
  store i32 4, i32* %328, align 4
  %329 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %330 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @chip_8001, align 8
  %333 = icmp ne i64 %331, %332
  br i1 %333, label %334, label %378

334:                                              ; preds = %288
  %335 = load i32, i32* @PM8001_MPI_QUEUE, align 4
  %336 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %337 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %336, i32 0, i32 3
  %338 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %337, i32 0, i32 0
  %339 = load %struct.TYPE_8__*, %struct.TYPE_8__** %338, align 8
  %340 = load i32, i32* @OB, align 4
  %341 = load i32, i32* %6, align 4
  %342 = add nsw i32 %340, %341
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %344, i32 0, i32 0
  store i32 %335, i32* %345, align 8
  %346 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %347 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %346, i32 0, i32 3
  %348 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %347, i32 0, i32 0
  %349 = load %struct.TYPE_8__*, %struct.TYPE_8__** %348, align 8
  %350 = load i32, i32* @OB, align 4
  %351 = load i32, i32* %6, align 4
  %352 = add nsw i32 %350, %351
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 1
  store i32 128, i32* %355, align 4
  %356 = load i32, i32* @PM8001_MPI_QUEUE, align 4
  %357 = mul nsw i32 %356, 128
  %358 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %359 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %358, i32 0, i32 3
  %360 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %359, i32 0, i32 0
  %361 = load %struct.TYPE_8__*, %struct.TYPE_8__** %360, align 8
  %362 = load i32, i32* @OB, align 4
  %363 = load i32, i32* %6, align 4
  %364 = add nsw i32 %362, %363
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 2
  store i32 %357, i32* %367, align 8
  %368 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %369 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %368, i32 0, i32 3
  %370 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %369, i32 0, i32 0
  %371 = load %struct.TYPE_8__*, %struct.TYPE_8__** %370, align 8
  %372 = load i32, i32* @OB, align 4
  %373 = load i32, i32* %6, align 4
  %374 = add nsw i32 %372, %373
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 3
  store i32 128, i32* %377, align 4
  br label %422

378:                                              ; preds = %288
  %379 = load i32, i32* @PM8001_MPI_QUEUE, align 4
  %380 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %381 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %380, i32 0, i32 3
  %382 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %381, i32 0, i32 0
  %383 = load %struct.TYPE_8__*, %struct.TYPE_8__** %382, align 8
  %384 = load i32, i32* @OB, align 4
  %385 = load i32, i32* %6, align 4
  %386 = add nsw i32 %384, %385
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %383, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %388, i32 0, i32 0
  store i32 %379, i32* %389, align 8
  %390 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %391 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %390, i32 0, i32 3
  %392 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %391, i32 0, i32 0
  %393 = load %struct.TYPE_8__*, %struct.TYPE_8__** %392, align 8
  %394 = load i32, i32* @OB, align 4
  %395 = load i32, i32* %6, align 4
  %396 = add nsw i32 %394, %395
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %393, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %398, i32 0, i32 1
  store i32 64, i32* %399, align 4
  %400 = load i32, i32* @PM8001_MPI_QUEUE, align 4
  %401 = mul nsw i32 %400, 64
  %402 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %403 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %402, i32 0, i32 3
  %404 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %403, i32 0, i32 0
  %405 = load %struct.TYPE_8__*, %struct.TYPE_8__** %404, align 8
  %406 = load i32, i32* @OB, align 4
  %407 = load i32, i32* %6, align 4
  %408 = add nsw i32 %406, %407
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %405, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %410, i32 0, i32 2
  store i32 %401, i32* %411, align 8
  %412 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %413 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %412, i32 0, i32 3
  %414 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %413, i32 0, i32 0
  %415 = load %struct.TYPE_8__*, %struct.TYPE_8__** %414, align 8
  %416 = load i32, i32* @OB, align 4
  %417 = load i32, i32* %6, align 4
  %418 = add nsw i32 %416, %417
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %415, i64 %419
  %421 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %420, i32 0, i32 3
  store i32 64, i32* %421, align 4
  br label %422

422:                                              ; preds = %378, %334
  br label %423

423:                                              ; preds = %422
  %424 = load i32, i32* %6, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %6, align 4
  br label %284

426:                                              ; preds = %284
  %427 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %428 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %427, i32 0, i32 3
  %429 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %428, i32 0, i32 0
  %430 = load %struct.TYPE_8__*, %struct.TYPE_8__** %429, align 8
  %431 = load i64, i64* @NVMD, align 8
  %432 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %430, i64 %431
  %433 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %432, i32 0, i32 0
  store i32 1, i32* %433, align 8
  %434 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %435 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %434, i32 0, i32 3
  %436 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %435, i32 0, i32 0
  %437 = load %struct.TYPE_8__*, %struct.TYPE_8__** %436, align 8
  %438 = load i64, i64* @NVMD, align 8
  %439 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %437, i64 %438
  %440 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %439, i32 0, i32 1
  store i32 4096, i32* %440, align 4
  %441 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %442 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %441, i32 0, i32 3
  %443 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %442, i32 0, i32 0
  %444 = load %struct.TYPE_8__*, %struct.TYPE_8__** %443, align 8
  %445 = load i64, i64* @NVMD, align 8
  %446 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %444, i64 %445
  %447 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %446, i32 0, i32 2
  store i32 4096, i32* %447, align 8
  %448 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %449 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %448, i32 0, i32 3
  %450 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %449, i32 0, i32 0
  %451 = load %struct.TYPE_8__*, %struct.TYPE_8__** %450, align 8
  %452 = load i64, i64* @DEV_MEM, align 8
  %453 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %451, i64 %452
  %454 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %453, i32 0, i32 0
  store i32 1, i32* %454, align 8
  %455 = load i32, i32* @PM8001_MAX_DEVICES, align 4
  %456 = sext i32 %455 to i64
  %457 = mul i64 %456, 4
  %458 = trunc i64 %457 to i32
  %459 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %460 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %459, i32 0, i32 3
  %461 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %460, i32 0, i32 0
  %462 = load %struct.TYPE_8__*, %struct.TYPE_8__** %461, align 8
  %463 = load i64, i64* @DEV_MEM, align 8
  %464 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %462, i64 %463
  %465 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %464, i32 0, i32 1
  store i32 %458, i32* %465, align 4
  %466 = load i32, i32* @PM8001_MAX_DEVICES, align 4
  %467 = sext i32 %466 to i64
  %468 = mul i64 %467, 4
  %469 = trunc i64 %468 to i32
  %470 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %471 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %470, i32 0, i32 3
  %472 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %471, i32 0, i32 0
  %473 = load %struct.TYPE_8__*, %struct.TYPE_8__** %472, align 8
  %474 = load i64, i64* @DEV_MEM, align 8
  %475 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %473, i64 %474
  %476 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %475, i32 0, i32 2
  store i32 %469, i32* %476, align 8
  %477 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %478 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %477, i32 0, i32 3
  %479 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %478, i32 0, i32 0
  %480 = load %struct.TYPE_8__*, %struct.TYPE_8__** %479, align 8
  %481 = load i64, i64* @CCB_MEM, align 8
  %482 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %480, i64 %481
  %483 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %482, i32 0, i32 0
  store i32 1, i32* %483, align 8
  %484 = load i32, i32* @PM8001_MAX_CCB, align 4
  %485 = sext i32 %484 to i64
  %486 = mul i64 %485, 4
  %487 = trunc i64 %486 to i32
  %488 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %489 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %488, i32 0, i32 3
  %490 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %489, i32 0, i32 0
  %491 = load %struct.TYPE_8__*, %struct.TYPE_8__** %490, align 8
  %492 = load i64, i64* @CCB_MEM, align 8
  %493 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %491, i64 %492
  %494 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %493, i32 0, i32 1
  store i32 %487, i32* %494, align 4
  %495 = load i32, i32* @PM8001_MAX_CCB, align 4
  %496 = sext i32 %495 to i64
  %497 = mul i64 %496, 4
  %498 = trunc i64 %497 to i32
  %499 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %500 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %499, i32 0, i32 3
  %501 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %500, i32 0, i32 0
  %502 = load %struct.TYPE_8__*, %struct.TYPE_8__** %501, align 8
  %503 = load i64, i64* @CCB_MEM, align 8
  %504 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %502, i64 %503
  %505 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %504, i32 0, i32 2
  store i32 %498, i32* %505, align 8
  %506 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %507 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %506, i32 0, i32 3
  %508 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %507, i32 0, i32 0
  %509 = load %struct.TYPE_8__*, %struct.TYPE_8__** %508, align 8
  %510 = load i64, i64* @FW_FLASH, align 8
  %511 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %509, i64 %510
  %512 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %511, i32 0, i32 2
  store i32 4096, i32* %512, align 8
  %513 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %514 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %513, i32 0, i32 3
  %515 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %514, i32 0, i32 0
  %516 = load %struct.TYPE_8__*, %struct.TYPE_8__** %515, align 8
  %517 = load i64, i64* @FORENSIC_MEM, align 8
  %518 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %516, i64 %517
  %519 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %518, i32 0, i32 0
  store i32 1, i32* %519, align 8
  %520 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %521 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %520, i32 0, i32 3
  %522 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %521, i32 0, i32 0
  %523 = load %struct.TYPE_8__*, %struct.TYPE_8__** %522, align 8
  %524 = load i64, i64* @FORENSIC_MEM, align 8
  %525 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %523, i64 %524
  %526 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %525, i32 0, i32 2
  store i32 65536, i32* %526, align 8
  %527 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %528 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %527, i32 0, i32 3
  %529 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %528, i32 0, i32 0
  %530 = load %struct.TYPE_8__*, %struct.TYPE_8__** %529, align 8
  %531 = load i64, i64* @FORENSIC_MEM, align 8
  %532 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %530, i64 %531
  %533 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %532, i32 0, i32 1
  store i32 65536, i32* %533, align 4
  %534 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %535 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %534, i32 0, i32 3
  %536 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %535, i32 0, i32 0
  %537 = load %struct.TYPE_8__*, %struct.TYPE_8__** %536, align 8
  %538 = load i64, i64* @FORENSIC_MEM, align 8
  %539 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %537, i64 %538
  %540 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %539, i32 0, i32 3
  store i32 65536, i32* %540, align 4
  store i32 0, i32* %6, align 4
  br label %541

541:                                              ; preds = %607, %426
  %542 = load i32, i32* %6, align 4
  %543 = load i32, i32* @USI_MAX_MEMCNT, align 4
  %544 = icmp slt i32 %542, %543
  br i1 %544, label %545, label %610

545:                                              ; preds = %541
  %546 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %547 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %546, i32 0, i32 5
  %548 = load i32, i32* %547, align 8
  %549 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %550 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %549, i32 0, i32 3
  %551 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %550, i32 0, i32 0
  %552 = load %struct.TYPE_8__*, %struct.TYPE_8__** %551, align 8
  %553 = load i32, i32* %6, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %552, i64 %554
  %556 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %555, i32 0, i32 5
  %557 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %558 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %557, i32 0, i32 3
  %559 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %558, i32 0, i32 0
  %560 = load %struct.TYPE_8__*, %struct.TYPE_8__** %559, align 8
  %561 = load i32, i32* %6, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %560, i64 %562
  %564 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %563, i32 0, i32 4
  %565 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %566 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %565, i32 0, i32 3
  %567 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %566, i32 0, i32 0
  %568 = load %struct.TYPE_8__*, %struct.TYPE_8__** %567, align 8
  %569 = load i32, i32* %6, align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %568, i64 %570
  %572 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %571, i32 0, i32 7
  %573 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %574 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %573, i32 0, i32 3
  %575 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %574, i32 0, i32 0
  %576 = load %struct.TYPE_8__*, %struct.TYPE_8__** %575, align 8
  %577 = load i32, i32* %6, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %576, i64 %578
  %580 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %579, i32 0, i32 6
  %581 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %582 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %581, i32 0, i32 3
  %583 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %582, i32 0, i32 0
  %584 = load %struct.TYPE_8__*, %struct.TYPE_8__** %583, align 8
  %585 = load i32, i32* %6, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %584, i64 %586
  %588 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %587, i32 0, i32 2
  %589 = load i32, i32* %588, align 8
  %590 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %591 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %590, i32 0, i32 3
  %592 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %591, i32 0, i32 0
  %593 = load %struct.TYPE_8__*, %struct.TYPE_8__** %592, align 8
  %594 = load i32, i32* %6, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %593, i64 %595
  %597 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %596, i32 0, i32 3
  %598 = load i32, i32* %597, align 4
  %599 = call i64 @pm8001_mem_alloc(i32 %548, %struct.TYPE_10__** %556, i32* %564, i32* %572, i32* %580, i32 %589, i32 %598)
  %600 = icmp ne i64 %599, 0
  br i1 %600, label %601, label %606

601:                                              ; preds = %545
  %602 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %603 = load i32, i32* %6, align 4
  %604 = call i32 @pm8001_printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %603)
  %605 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %602, i32 %604)
  br label %730

606:                                              ; preds = %545
  br label %607

607:                                              ; preds = %606
  %608 = load i32, i32* %6, align 4
  %609 = add nsw i32 %608, 1
  store i32 %609, i32* %6, align 4
  br label %541

610:                                              ; preds = %541
  %611 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %612 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %611, i32 0, i32 3
  %613 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %612, i32 0, i32 0
  %614 = load %struct.TYPE_8__*, %struct.TYPE_8__** %613, align 8
  %615 = load i64, i64* @DEV_MEM, align 8
  %616 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %614, i64 %615
  %617 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %616, i32 0, i32 5
  %618 = load %struct.TYPE_10__*, %struct.TYPE_10__** %617, align 8
  %619 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %620 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %619, i32 0, i32 4
  store %struct.TYPE_10__* %618, %struct.TYPE_10__** %620, align 8
  store i32 0, i32* %6, align 4
  br label %621

621:                                              ; preds = %657, %610
  %622 = load i32, i32* %6, align 4
  %623 = load i32, i32* @PM8001_MAX_DEVICES, align 4
  %624 = icmp slt i32 %622, %623
  br i1 %624, label %625, label %660

625:                                              ; preds = %621
  %626 = load i32, i32* @SAS_PHY_UNUSED, align 4
  %627 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %628 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %627, i32 0, i32 4
  %629 = load %struct.TYPE_10__*, %struct.TYPE_10__** %628, align 8
  %630 = load i32, i32* %6, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %629, i64 %631
  %633 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %632, i32 0, i32 7
  store i32 %626, i32* %633, align 8
  %634 = load i32, i32* %6, align 4
  %635 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %636 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %635, i32 0, i32 4
  %637 = load %struct.TYPE_10__*, %struct.TYPE_10__** %636, align 8
  %638 = load i32, i32* %6, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %637, i64 %639
  %641 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %640, i32 0, i32 0
  store i32 %634, i32* %641, align 8
  %642 = load i32, i32* @PM8001_MAX_DEVICES, align 4
  %643 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %644 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %643, i32 0, i32 4
  %645 = load %struct.TYPE_10__*, %struct.TYPE_10__** %644, align 8
  %646 = load i32, i32* %6, align 4
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %645, i64 %647
  %649 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %648, i32 0, i32 1
  store i32 %642, i32* %649, align 4
  %650 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %651 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %650, i32 0, i32 4
  %652 = load %struct.TYPE_10__*, %struct.TYPE_10__** %651, align 8
  %653 = load i32, i32* %6, align 4
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %652, i64 %654
  %656 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %655, i32 0, i32 6
  store i64 0, i64* %656, align 8
  br label %657

657:                                              ; preds = %625
  %658 = load i32, i32* %6, align 4
  %659 = add nsw i32 %658, 1
  store i32 %659, i32* %6, align 4
  br label %621

660:                                              ; preds = %621
  %661 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %662 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %661, i32 0, i32 3
  %663 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %662, i32 0, i32 0
  %664 = load %struct.TYPE_8__*, %struct.TYPE_8__** %663, align 8
  %665 = load i64, i64* @CCB_MEM, align 8
  %666 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %664, i64 %665
  %667 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %666, i32 0, i32 5
  %668 = load %struct.TYPE_10__*, %struct.TYPE_10__** %667, align 8
  %669 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %670 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %669, i32 0, i32 2
  store %struct.TYPE_10__* %668, %struct.TYPE_10__** %670, align 8
  store i32 0, i32* %6, align 4
  br label %671

671:                                              ; preds = %721, %660
  %672 = load i32, i32* %6, align 4
  %673 = load i32, i32* @PM8001_MAX_CCB, align 4
  %674 = icmp slt i32 %672, %673
  br i1 %674, label %675, label %724

675:                                              ; preds = %671
  %676 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %677 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %676, i32 0, i32 3
  %678 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %677, i32 0, i32 0
  %679 = load %struct.TYPE_8__*, %struct.TYPE_8__** %678, align 8
  %680 = load i64, i64* @CCB_MEM, align 8
  %681 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %679, i64 %680
  %682 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %681, i32 0, i32 4
  %683 = load i32, i32* %682, align 8
  %684 = sext i32 %683 to i64
  %685 = load i32, i32* %6, align 4
  %686 = sext i32 %685 to i64
  %687 = mul i64 %686, 4
  %688 = add i64 %684, %687
  %689 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %690 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %689, i32 0, i32 2
  %691 = load %struct.TYPE_10__*, %struct.TYPE_10__** %690, align 8
  %692 = load i32, i32* %6, align 4
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %691, i64 %693
  %695 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %694, i32 0, i32 5
  store i64 %688, i64* %695, align 8
  %696 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %697 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %696, i32 0, i32 2
  %698 = load %struct.TYPE_10__*, %struct.TYPE_10__** %697, align 8
  %699 = load i32, i32* %6, align 4
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %698, i64 %700
  %702 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %701, i32 0, i32 4
  store i32* null, i32** %702, align 8
  %703 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %704 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %703, i32 0, i32 2
  %705 = load %struct.TYPE_10__*, %struct.TYPE_10__** %704, align 8
  %706 = load i32, i32* %6, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %705, i64 %707
  %709 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %708, i32 0, i32 2
  store i32 -1, i32* %709, align 8
  %710 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %711 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %710, i32 0, i32 2
  %712 = load %struct.TYPE_10__*, %struct.TYPE_10__** %711, align 8
  %713 = load i32, i32* %6, align 4
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %712, i64 %714
  %716 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %715, i32 0, i32 3
  store i32* null, i32** %716, align 8
  %717 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %718 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %717, i32 0, i32 1
  %719 = load i32, i32* %718, align 4
  %720 = add nsw i32 %719, 1
  store i32 %720, i32* %718, align 4
  br label %721

721:                                              ; preds = %675
  %722 = load i32, i32* %6, align 4
  %723 = add nsw i32 %722, 1
  store i32 %723, i32* %6, align 4
  br label %671

724:                                              ; preds = %671
  %725 = load i32, i32* @PM8001F_INIT_TIME, align 4
  %726 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %727 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %726, i32 0, i32 0
  store i32 %725, i32* %727, align 8
  %728 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %729 = call i32 @pm8001_tag_init(%struct.pm8001_hba_info* %728)
  store i32 0, i32* %3, align 4
  br label %731

730:                                              ; preds = %601, %75
  store i32 1, i32* %3, align 4
  br label %731

731:                                              ; preds = %730, %724
  %732 = load i32, i32* %3, align 4
  ret i32 %732
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i32) #1

declare dso_local i32 @pm8001_phy_init(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i64 @pm8001_mem_alloc(i32, %struct.TYPE_10__**, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_tag_init(%struct.pm8001_hba_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
