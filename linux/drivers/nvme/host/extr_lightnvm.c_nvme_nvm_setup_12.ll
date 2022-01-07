; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_lightnvm.c_nvme_nvm_setup_12.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_lightnvm.c_nvme_nvm_setup_12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_nvm_id12 = type { i32, i32, i32, i32, i32, i32, %struct.nvme_nvm_id12_grp }
%struct.nvme_nvm_id12_grp = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvm_geo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.nvm_addrf_12 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"nvm: memory type not supported\0A\00", align 1
@NVM_OCSSD_SPEC_12 = common dso_local global i32 0, align 4
@NVM_PLANE_SINGLE = common dso_local global i32 0, align 4
@NVM_PLANE_DOUBLE = common dso_local global i32 0, align 4
@NVM_PLANE_QUAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_nvm_id12*, %struct.nvm_geo*)* @nvme_nvm_setup_12 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_nvm_setup_12(%struct.nvme_nvm_id12* %0, %struct.nvm_geo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_nvm_id12*, align 8
  %5 = alloca %struct.nvm_geo*, align 8
  %6 = alloca %struct.nvme_nvm_id12_grp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nvme_nvm_id12* %0, %struct.nvme_nvm_id12** %4, align 8
  store %struct.nvm_geo* %1, %struct.nvm_geo** %5, align 8
  %10 = load %struct.nvme_nvm_id12*, %struct.nvme_nvm_id12** %4, align 8
  %11 = getelementptr inbounds %struct.nvme_nvm_id12, %struct.nvme_nvm_id12* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %279

17:                                               ; preds = %2
  %18 = load %struct.nvme_nvm_id12*, %struct.nvme_nvm_id12** %4, align 8
  %19 = getelementptr inbounds %struct.nvme_nvm_id12, %struct.nvme_nvm_id12* %18, i32 0, i32 6
  store %struct.nvme_nvm_id12_grp* %19, %struct.nvme_nvm_id12_grp** %6, align 8
  %20 = load %struct.nvme_nvm_id12_grp*, %struct.nvme_nvm_id12_grp** %6, align 8
  %21 = getelementptr inbounds %struct.nvme_nvm_id12_grp, %struct.nvme_nvm_id12_grp* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %279

28:                                               ; preds = %17
  %29 = load %struct.nvme_nvm_id12*, %struct.nvme_nvm_id12** %4, align 8
  %30 = getelementptr inbounds %struct.nvme_nvm_id12, %struct.nvme_nvm_id12* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %33 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %32, i32 0, i32 35
  store i32 %31, i32* %33, align 4
  %34 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %35 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %34, i32 0, i32 0
  store i32 2, i32* %35, align 8
  %36 = load i32, i32* @NVM_OCSSD_SPEC_12, align 4
  %37 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %38 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %37, i32 0, i32 34
  store i32 %36, i32* %38, align 8
  %39 = load %struct.nvme_nvm_id12_grp*, %struct.nvme_nvm_id12_grp** %6, align 8
  %40 = getelementptr inbounds %struct.nvme_nvm_id12_grp, %struct.nvme_nvm_id12_grp* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %43 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.nvme_nvm_id12_grp*, %struct.nvme_nvm_id12_grp** %6, align 8
  %45 = getelementptr inbounds %struct.nvme_nvm_id12_grp, %struct.nvme_nvm_id12_grp* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %48 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %50 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %53 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %51, %54
  %56 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %57 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.nvme_nvm_id12_grp*, %struct.nvme_nvm_id12_grp** %6, align 8
  %59 = getelementptr inbounds %struct.nvme_nvm_id12_grp, %struct.nvme_nvm_id12_grp* %58, i32 0, i32 18
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le16_to_cpu(i32 %60)
  %62 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %63 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.nvme_nvm_id12_grp*, %struct.nvme_nvm_id12_grp** %6, align 8
  %65 = getelementptr inbounds %struct.nvme_nvm_id12_grp, %struct.nvme_nvm_id12_grp* %64, i32 0, i32 17
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @le16_to_cpu(i32 %66)
  %68 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %69 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  %70 = load %struct.nvme_nvm_id12_grp*, %struct.nvme_nvm_id12_grp** %6, align 8
  %71 = getelementptr inbounds %struct.nvme_nvm_id12_grp, %struct.nvme_nvm_id12_grp* %70, i32 0, i32 16
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le16_to_cpu(i32 %72)
  %74 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %75 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 8
  %76 = load %struct.nvme_nvm_id12_grp*, %struct.nvme_nvm_id12_grp** %6, align 8
  %77 = getelementptr inbounds %struct.nvme_nvm_id12_grp, %struct.nvme_nvm_id12_grp* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @le16_to_cpu(i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load %struct.nvme_nvm_id12_grp*, %struct.nvme_nvm_id12_grp** %6, align 8
  %81 = getelementptr inbounds %struct.nvme_nvm_id12_grp, %struct.nvme_nvm_id12_grp* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @le16_to_cpu(i32 %82)
  %84 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %85 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = sdiv i32 %83, %86
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.nvme_nvm_id12_grp*, %struct.nvme_nvm_id12_grp** %6, align 8
  %90 = getelementptr inbounds %struct.nvme_nvm_id12_grp, %struct.nvme_nvm_id12_grp* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = mul nsw i32 %88, %91
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %97 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %96, i32 0, i32 7
  store i32 %95, i32* %97, align 4
  %98 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %99 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %102 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = mul nsw i32 %100, %103
  %105 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %106 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %105, i32 0, i32 8
  store i32 %104, i32* %106, align 8
  %107 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %108 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %111 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %110, i32 0, i32 8
  %112 = load i32, i32* %111, align 8
  %113 = mul nsw i32 %109, %112
  %114 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %115 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %114, i32 0, i32 9
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %118 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %117, i32 0, i32 10
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %121 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %120, i32 0, i32 11
  store i32 %119, i32* %121, align 4
  %122 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %123 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %122, i32 0, i32 11
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %124, 3
  %126 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %127 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %126, i32 0, i32 12
  store i32 %125, i32* %127, align 8
  %128 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %129 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %132 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = mul nsw i32 %130, %133
  %135 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %136 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %135, i32 0, i32 13
  store i32 %134, i32* %136, align 4
  %137 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %138 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %141 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %140, i32 0, i32 14
  store i32 %139, i32* %141, align 8
  %142 = load %struct.nvme_nvm_id12_grp*, %struct.nvme_nvm_id12_grp** %6, align 8
  %143 = getelementptr inbounds %struct.nvme_nvm_id12_grp, %struct.nvme_nvm_id12_grp* %142, i32 0, i32 15
  %144 = load i32, i32* %143, align 8
  %145 = call i8* @le32_to_cpu(i32 %144)
  %146 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %147 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %146, i32 0, i32 33
  store i8* %145, i8** %147, align 8
  %148 = load %struct.nvme_nvm_id12_grp*, %struct.nvme_nvm_id12_grp** %6, align 8
  %149 = getelementptr inbounds %struct.nvme_nvm_id12_grp, %struct.nvme_nvm_id12_grp* %148, i32 0, i32 14
  %150 = load i32, i32* %149, align 4
  %151 = call i8* @le32_to_cpu(i32 %150)
  %152 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %153 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %152, i32 0, i32 32
  store i8* %151, i8** %153, align 8
  %154 = load %struct.nvme_nvm_id12_grp*, %struct.nvme_nvm_id12_grp** %6, align 8
  %155 = getelementptr inbounds %struct.nvme_nvm_id12_grp, %struct.nvme_nvm_id12_grp* %154, i32 0, i32 13
  %156 = load i32, i32* %155, align 8
  %157 = call i8* @le32_to_cpu(i32 %156)
  %158 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %159 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %158, i32 0, i32 31
  store i8* %157, i8** %159, align 8
  %160 = load %struct.nvme_nvm_id12_grp*, %struct.nvme_nvm_id12_grp** %6, align 8
  %161 = getelementptr inbounds %struct.nvme_nvm_id12_grp, %struct.nvme_nvm_id12_grp* %160, i32 0, i32 12
  %162 = load i32, i32* %161, align 4
  %163 = call i8* @le32_to_cpu(i32 %162)
  %164 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %165 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %164, i32 0, i32 30
  store i8* %163, i8** %165, align 8
  %166 = load %struct.nvme_nvm_id12_grp*, %struct.nvme_nvm_id12_grp** %6, align 8
  %167 = getelementptr inbounds %struct.nvme_nvm_id12_grp, %struct.nvme_nvm_id12_grp* %166, i32 0, i32 11
  %168 = load i32, i32* %167, align 8
  %169 = call i8* @le32_to_cpu(i32 %168)
  %170 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %171 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %170, i32 0, i32 29
  store i8* %169, i8** %171, align 8
  %172 = load %struct.nvme_nvm_id12_grp*, %struct.nvme_nvm_id12_grp** %6, align 8
  %173 = getelementptr inbounds %struct.nvme_nvm_id12_grp, %struct.nvme_nvm_id12_grp* %172, i32 0, i32 10
  %174 = load i32, i32* %173, align 4
  %175 = call i8* @le32_to_cpu(i32 %174)
  %176 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %177 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %176, i32 0, i32 28
  store i8* %175, i8** %177, align 8
  %178 = load %struct.nvme_nvm_id12_grp*, %struct.nvme_nvm_id12_grp** %6, align 8
  %179 = getelementptr inbounds %struct.nvme_nvm_id12_grp, %struct.nvme_nvm_id12_grp* %178, i32 0, i32 9
  %180 = load i32, i32* %179, align 8
  %181 = call i8* @le32_to_cpu(i32 %180)
  %182 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %183 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %182, i32 0, i32 27
  store i8* %181, i8** %183, align 8
  %184 = load %struct.nvme_nvm_id12*, %struct.nvme_nvm_id12** %4, align 8
  %185 = getelementptr inbounds %struct.nvme_nvm_id12, %struct.nvme_nvm_id12* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %188 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %187, i32 0, i32 26
  store i32 %186, i32* %188, align 8
  %189 = load %struct.nvme_nvm_id12*, %struct.nvme_nvm_id12** %4, align 8
  %190 = getelementptr inbounds %struct.nvme_nvm_id12, %struct.nvme_nvm_id12* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = call i8* @le32_to_cpu(i32 %191)
  %193 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %194 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %193, i32 0, i32 25
  store i8* %192, i8** %194, align 8
  %195 = load %struct.nvme_nvm_id12*, %struct.nvme_nvm_id12** %4, align 8
  %196 = getelementptr inbounds %struct.nvme_nvm_id12, %struct.nvme_nvm_id12* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i8* @le32_to_cpu(i32 %197)
  %199 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %200 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %199, i32 0, i32 24
  store i8* %198, i8** %200, align 8
  %201 = load %struct.nvme_nvm_id12_grp*, %struct.nvme_nvm_id12_grp** %6, align 8
  %202 = getelementptr inbounds %struct.nvme_nvm_id12_grp, %struct.nvme_nvm_id12_grp* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %205 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %204, i32 0, i32 15
  store i64 %203, i64* %205, align 8
  %206 = load %struct.nvme_nvm_id12_grp*, %struct.nvme_nvm_id12_grp** %6, align 8
  %207 = getelementptr inbounds %struct.nvme_nvm_id12_grp, %struct.nvme_nvm_id12_grp* %206, i32 0, i32 8
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %210 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %209, i32 0, i32 23
  store i32 %208, i32* %210, align 4
  %211 = load %struct.nvme_nvm_id12_grp*, %struct.nvme_nvm_id12_grp** %6, align 8
  %212 = getelementptr inbounds %struct.nvme_nvm_id12_grp, %struct.nvme_nvm_id12_grp* %211, i32 0, i32 7
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @le16_to_cpu(i32 %213)
  %215 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %216 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %215, i32 0, i32 16
  store i32 %214, i32* %216, align 8
  %217 = load %struct.nvme_nvm_id12_grp*, %struct.nvme_nvm_id12_grp** %6, align 8
  %218 = getelementptr inbounds %struct.nvme_nvm_id12_grp, %struct.nvme_nvm_id12_grp* %217, i32 0, i32 6
  %219 = load i32, i32* %218, align 4
  %220 = call i8* @le32_to_cpu(i32 %219)
  %221 = ptrtoint i8* %220 to i32
  %222 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %223 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %222, i32 0, i32 17
  store i32 %221, i32* %223, align 4
  %224 = load i32, i32* @NVM_PLANE_SINGLE, align 4
  %225 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %226 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %225, i32 0, i32 22
  store i32 %224, i32* %226, align 8
  %227 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %228 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %227, i32 0, i32 17
  %229 = load i32, i32* %228, align 4
  %230 = and i32 %229, 131586
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %240

232:                                              ; preds = %28
  %233 = load i32, i32* @NVM_PLANE_DOUBLE, align 4
  %234 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %235 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %234, i32 0, i32 22
  store i32 %233, i32* %235, align 8
  %236 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %237 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %236, i32 0, i32 11
  %238 = load i32, i32* %237, align 4
  %239 = shl i32 %238, 1
  store i32 %239, i32* %237, align 4
  br label %255

240:                                              ; preds = %28
  %241 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %242 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %241, i32 0, i32 17
  %243 = load i32, i32* %242, align 4
  %244 = and i32 %243, 263172
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %254

246:                                              ; preds = %240
  %247 = load i32, i32* @NVM_PLANE_QUAD, align 4
  %248 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %249 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %248, i32 0, i32 22
  store i32 %247, i32* %249, align 8
  %250 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %251 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %250, i32 0, i32 11
  %252 = load i32, i32* %251, align 4
  %253 = shl i32 %252, 2
  store i32 %253, i32* %251, align 4
  br label %254

254:                                              ; preds = %246, %240
  br label %255

255:                                              ; preds = %254, %232
  %256 = load %struct.nvme_nvm_id12_grp*, %struct.nvme_nvm_id12_grp** %6, align 8
  %257 = getelementptr inbounds %struct.nvme_nvm_id12_grp, %struct.nvme_nvm_id12_grp* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %260 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %259, i32 0, i32 18
  store i32 %258, i32* %260, align 8
  %261 = load %struct.nvme_nvm_id12_grp*, %struct.nvme_nvm_id12_grp** %6, align 8
  %262 = getelementptr inbounds %struct.nvme_nvm_id12_grp, %struct.nvme_nvm_id12_grp* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @le16_to_cpu(i32 %263)
  %265 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %266 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %265, i32 0, i32 19
  store i32 %264, i32* %266, align 4
  %267 = load %struct.nvme_nvm_id12_grp*, %struct.nvme_nvm_id12_grp** %6, align 8
  %268 = getelementptr inbounds %struct.nvme_nvm_id12_grp, %struct.nvme_nvm_id12_grp* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @le16_to_cpu(i32 %269)
  %271 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %272 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %271, i32 0, i32 20
  store i32 %270, i32* %272, align 8
  %273 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %274 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %273, i32 0, i32 21
  %275 = bitcast i32* %274 to %struct.nvm_addrf_12*
  %276 = load %struct.nvme_nvm_id12*, %struct.nvme_nvm_id12** %4, align 8
  %277 = getelementptr inbounds %struct.nvme_nvm_id12, %struct.nvme_nvm_id12* %276, i32 0, i32 1
  %278 = call i32 @nvme_nvm_set_addr_12(%struct.nvm_addrf_12* %275, i32* %277)
  store i32 0, i32* %3, align 4
  br label %279

279:                                              ; preds = %255, %24, %14
  %280 = load i32, i32* %3, align 4
  ret i32 %280
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @nvme_nvm_set_addr_12(%struct.nvm_addrf_12*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
