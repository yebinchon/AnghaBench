; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_mappingN.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_mappingN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nd_region = type { i32, %struct.nd_mapping* }
%struct.nd_mapping = type { i32, i32, i32, %struct.nvdimm* }
%struct.nvdimm = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s,%llu,%llu,%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i32)* @mappingN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mappingN(%struct.device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nd_region*, align 8
  %9 = alloca %struct.nd_mapping*, align 8
  %10 = alloca %struct.nvdimm*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.nd_region* @to_nd_region(%struct.device* %11)
  store %struct.nd_region* %12, %struct.nd_region** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.nd_region*, %struct.nd_region** %8, align 8
  %15 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %45

21:                                               ; preds = %3
  %22 = load %struct.nd_region*, %struct.nd_region** %8, align 8
  %23 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %22, i32 0, i32 1
  %24 = load %struct.nd_mapping*, %struct.nd_mapping** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %24, i64 %26
  store %struct.nd_mapping* %27, %struct.nd_mapping** %9, align 8
  %28 = load %struct.nd_mapping*, %struct.nd_mapping** %9, align 8
  %29 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %28, i32 0, i32 3
  %30 = load %struct.nvdimm*, %struct.nvdimm** %29, align 8
  store %struct.nvdimm* %30, %struct.nvdimm** %10, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.nvdimm*, %struct.nvdimm** %10, align 8
  %33 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %32, i32 0, i32 0
  %34 = call i8* @dev_name(i32* %33)
  %35 = load %struct.nd_mapping*, %struct.nd_mapping** %9, align 8
  %36 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.nd_mapping*, %struct.nd_mapping** %9, align 8
  %39 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nd_mapping*, %struct.nd_mapping** %9, align 8
  %42 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %37, i32 %40, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %21, %18
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.nd_region* @to_nd_region(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i8* @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
