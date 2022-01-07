; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_host_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_host_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i64, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_12__*, i64, i32, i64, i32, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_14__ = type { i64, i32*, i32* }
%struct.TYPE_13__ = type { i64*, i32*, i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"ips_host_info\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"\0AIBM ServeRAID General Information:\0A\0A\00", align 1
@IPS_NVRAM_P5_SIG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"\09Controller Type                   : %s\0A\00", align 1
@ips_adapter_name = common dso_local global i64* null, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"\09Controller Type                   : Unknown\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"\09IO region                         : 0x%x (%d bytes)\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"\09Memory region                     : 0x%x (%d bytes)\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"\09Shared memory address             : 0x%lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"\09IRQ number                        : %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"\09BIOS Version                      : %c%c%c%c%c%c%c\0A\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"\09BIOS Version                      : %c%c%c%c%c%c%c%c\0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"\09Firmware Version                  : %c%c%c%c%c%c%c\0A\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"\09Firmware Version                  : %c%c%c%c%c%c%c%c\0A\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"\09Boot Block Version                : %c%c%c%c%c%c%c\0A\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"\09Boot Block Version                : %c%c%c%c%c%c%c%c\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"\09Driver Version                    : %s%s\0A\00", align 1
@IPS_VERSION_HIGH = common dso_local global i32 0, align 4
@IPS_VERSION_LOW = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [41 x i8] c"\09Driver Build                      : %d\0A\00", align 1
@IPS_BUILD_IDENT = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [41 x i8] c"\09Max Physical Devices              : %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"\09Max Active Commands               : %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"\09Current Queued Commands           : %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"\09Current Active Commands           : %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"\09Current Queued PT Commands        : %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"\09Current Active PT Commands        : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.seq_file*)* @ips_host_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_host_info(%struct.TYPE_15__* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.seq_file*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %5 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1)
  %6 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %7 = call i32 @seq_puts(%struct.seq_file* %6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 7
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @le32_to_cpu(i32 %12)
  %14 = load i64, i64* @IPS_NVRAM_P5_SIG, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %2
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 7
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @le16_to_cpu(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %16
  %25 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %26 = load i64*, i64** @ips_adapter_name, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %26, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %33)
  br label %38

35:                                               ; preds = %16, %2
  %36 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %37 = call i32 @seq_puts(%struct.seq_file* %36, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %24
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 13
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 13
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 12
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i64 %47, i32 %50)
  br label %52

52:                                               ; preds = %43, %38
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 11
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %52
  %58 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 11
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 10
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i64 %61, i32 %64)
  %66 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 9
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %66, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i64 %69)
  br label %71

71:                                               ; preds = %57, %52
  %72 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %72, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i64 %77)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 7
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @le32_to_cpu(i32 %83)
  %85 = load i64, i64* @IPS_NVRAM_P5_SIG, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %210

87:                                               ; preds = %71
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 7
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %149

96:                                               ; preds = %87
  %97 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 7
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 7
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 7
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 7
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 7
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i64*, i64** %130, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 7
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 7
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i64*, i64** %144, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 2
  %147 = load i64, i64* %146, align 8
  %148 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %97, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i64 %105, i32 %112, i32 %119, i32 %126, i64 %133, i64 %140, i64 %147)
  br label %209

149:                                              ; preds = %87
  %150 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 7
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 7
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 7
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 7
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 3
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 7
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  %184 = load i64*, i64** %183, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 0
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 7
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load i64*, i64** %190, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 1
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 7
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = load i64*, i64** %197, align 8
  %199 = getelementptr inbounds i64, i64* %198, i64 2
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 7
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 0
  %205 = load i64*, i64** %204, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 3
  %207 = load i64, i64* %206, align 8
  %208 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %150, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i64 %158, i32 %165, i32 %172, i32 %179, i64 %186, i64 %193, i64 %200, i64 %207)
  br label %209

209:                                              ; preds = %149, %96
  br label %210

210:                                              ; preds = %209, %71
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 6
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 2
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 7
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %272

219:                                              ; preds = %210
  %220 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 6
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 0
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 6
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 2
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 1
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 6
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 2
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 2
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 6
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 2
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 3
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 6
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 2
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 4
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 6
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 2
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 5
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 6
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 2
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 6
  %270 = load i32, i32* %269, align 4
  %271 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %220, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i64 %228, i32 %235, i32 %242, i32 %249, i32 %256, i32 %263, i32 %270)
  br label %332

272:                                              ; preds = %210
  %273 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 6
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 2
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 0
  %280 = load i32, i32* %279, align 4
  %281 = sext i32 %280 to i64
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i32 0, i32 6
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 2
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 1
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 6
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 2
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 2
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 6
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 2
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 3
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i32 0, i32 6
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 2
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 4
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 6
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 2
  %314 = load i32*, i32** %313, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 5
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 6
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 2
  %321 = load i32*, i32** %320, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 6
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %324, i32 0, i32 6
  %326 = load %struct.TYPE_14__*, %struct.TYPE_14__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i32 0, i32 2
  %328 = load i32*, i32** %327, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 7
  %330 = load i32, i32* %329, align 4
  %331 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %273, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i64 0, i64 0), i64 %281, i32 %288, i32 %295, i32 %302, i32 %309, i32 %316, i32 %323, i32 %330)
  br label %332

332:                                              ; preds = %272, %219
  %333 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %333, i32 0, i32 6
  %335 = load %struct.TYPE_14__*, %struct.TYPE_14__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 1
  %337 = load i32*, i32** %336, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 7
  %339 = load i32, i32* %338, align 4
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %394

341:                                              ; preds = %332
  %342 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %343 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %343, i32 0, i32 6
  %345 = load %struct.TYPE_14__*, %struct.TYPE_14__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %345, i32 0, i32 1
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 0
  %349 = load i32, i32* %348, align 4
  %350 = sext i32 %349 to i64
  %351 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %351, i32 0, i32 6
  %353 = load %struct.TYPE_14__*, %struct.TYPE_14__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i32 0, i32 1
  %355 = load i32*, i32** %354, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 1
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %359 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %358, i32 0, i32 6
  %360 = load %struct.TYPE_14__*, %struct.TYPE_14__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %360, i32 0, i32 1
  %362 = load i32*, i32** %361, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 2
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %365, i32 0, i32 6
  %367 = load %struct.TYPE_14__*, %struct.TYPE_14__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i32 0, i32 1
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 3
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %373 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %372, i32 0, i32 6
  %374 = load %struct.TYPE_14__*, %struct.TYPE_14__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %374, i32 0, i32 1
  %376 = load i32*, i32** %375, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 4
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %380 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %379, i32 0, i32 6
  %381 = load %struct.TYPE_14__*, %struct.TYPE_14__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %381, i32 0, i32 1
  %383 = load i32*, i32** %382, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 5
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %387 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %386, i32 0, i32 6
  %388 = load %struct.TYPE_14__*, %struct.TYPE_14__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %388, i32 0, i32 1
  %390 = load i32*, i32** %389, align 8
  %391 = getelementptr inbounds i32, i32* %390, i64 6
  %392 = load i32, i32* %391, align 4
  %393 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %342, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0), i64 %350, i32 %357, i32 %364, i32 %371, i32 %378, i32 %385, i32 %392)
  br label %454

394:                                              ; preds = %332
  %395 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %396 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %397 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %396, i32 0, i32 6
  %398 = load %struct.TYPE_14__*, %struct.TYPE_14__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %398, i32 0, i32 1
  %400 = load i32*, i32** %399, align 8
  %401 = getelementptr inbounds i32, i32* %400, i64 0
  %402 = load i32, i32* %401, align 4
  %403 = sext i32 %402 to i64
  %404 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %405 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %404, i32 0, i32 6
  %406 = load %struct.TYPE_14__*, %struct.TYPE_14__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %406, i32 0, i32 1
  %408 = load i32*, i32** %407, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 1
  %410 = load i32, i32* %409, align 4
  %411 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %412 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %411, i32 0, i32 6
  %413 = load %struct.TYPE_14__*, %struct.TYPE_14__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %413, i32 0, i32 1
  %415 = load i32*, i32** %414, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 2
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %419 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %418, i32 0, i32 6
  %420 = load %struct.TYPE_14__*, %struct.TYPE_14__** %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %420, i32 0, i32 1
  %422 = load i32*, i32** %421, align 8
  %423 = getelementptr inbounds i32, i32* %422, i64 3
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %426 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %425, i32 0, i32 6
  %427 = load %struct.TYPE_14__*, %struct.TYPE_14__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %427, i32 0, i32 1
  %429 = load i32*, i32** %428, align 8
  %430 = getelementptr inbounds i32, i32* %429, i64 4
  %431 = load i32, i32* %430, align 4
  %432 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %433 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %432, i32 0, i32 6
  %434 = load %struct.TYPE_14__*, %struct.TYPE_14__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %434, i32 0, i32 1
  %436 = load i32*, i32** %435, align 8
  %437 = getelementptr inbounds i32, i32* %436, i64 5
  %438 = load i32, i32* %437, align 4
  %439 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %440 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %439, i32 0, i32 6
  %441 = load %struct.TYPE_14__*, %struct.TYPE_14__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %441, i32 0, i32 1
  %443 = load i32*, i32** %442, align 8
  %444 = getelementptr inbounds i32, i32* %443, i64 6
  %445 = load i32, i32* %444, align 4
  %446 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %447 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %446, i32 0, i32 6
  %448 = load %struct.TYPE_14__*, %struct.TYPE_14__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %448, i32 0, i32 1
  %450 = load i32*, i32** %449, align 8
  %451 = getelementptr inbounds i32, i32* %450, i64 7
  %452 = load i32, i32* %451, align 4
  %453 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %395, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i64 0, i64 0), i64 %403, i32 %410, i32 %417, i32 %424, i32 %431, i32 %438, i32 %445, i32 %452)
  br label %454

454:                                              ; preds = %394, %341
  %455 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %456 = load i32, i32* @IPS_VERSION_HIGH, align 4
  %457 = sext i32 %456 to i64
  %458 = load i32, i32* @IPS_VERSION_LOW, align 4
  %459 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %455, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i64 %457, i32 %458)
  %460 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %461 = load i64, i64* @IPS_BUILD_IDENT, align 8
  %462 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %460, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i64 %461)
  %463 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %464 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %465 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %464, i32 0, i32 6
  %466 = load %struct.TYPE_14__*, %struct.TYPE_14__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %466, i32 0, i32 0
  %468 = load i64, i64* %467, align 8
  %469 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %463, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i64 %468)
  %470 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %471 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %472 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %471, i32 0, i32 1
  %473 = load i64, i64* %472, align 8
  %474 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %470, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i64 %473)
  %475 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %476 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %477 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %476, i32 0, i32 5
  %478 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %477, i32 0, i32 0
  %479 = load i64, i64* %478, align 8
  %480 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %475, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0), i64 %479)
  %481 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %482 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %483 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %482, i32 0, i32 4
  %484 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %483, i32 0, i32 0
  %485 = load i64, i64* %484, align 8
  %486 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %487 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %486, i32 0, i32 2
  %488 = load i64, i64* %487, align 8
  %489 = sub i64 %485, %488
  %490 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %481, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0), i64 %489)
  %491 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %492 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %493 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %492, i32 0, i32 3
  %494 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %493, i32 0, i32 0
  %495 = load i64, i64* %494, align 8
  %496 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %491, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0), i64 %495)
  %497 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %498 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %499 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %498, i32 0, i32 2
  %500 = load i64, i64* %499, align 8
  %501 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %497, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i64 0, i64 0), i64 %500)
  %502 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %503 = call i32 @seq_putc(%struct.seq_file* %502, i8 signext 10)
  ret i32 0
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, ...) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
