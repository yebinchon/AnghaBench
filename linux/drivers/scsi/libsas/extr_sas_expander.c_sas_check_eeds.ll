; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_check_eeds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_check_eeds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32, %struct.TYPE_4__*, %struct.domain_device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ex_phy = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"edge ex %016llx phy S:%02d <--> edge ex %016llx phy S:%02d, while there is a fanout ex %016llx\0A\00", align 1
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"edge ex %016llx phy%02d <--> edge ex %016llx phy%02d link forms a third EEDS!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*, %struct.ex_phy*, %struct.ex_phy*)* @sas_check_eeds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_check_eeds(%struct.domain_device* %0, %struct.ex_phy* %1, %struct.ex_phy* %2) #0 {
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca %struct.ex_phy*, align 8
  %6 = alloca %struct.ex_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.domain_device*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %4, align 8
  store %struct.ex_phy* %1, %struct.ex_phy** %5, align 8
  store %struct.ex_phy* %2, %struct.ex_phy** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %10 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %9, i32 0, i32 2
  %11 = load %struct.domain_device*, %struct.domain_device** %10, align 8
  store %struct.domain_device* %11, %struct.domain_device** %8, align 8
  %12 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %13 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @SAS_ADDR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %3
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %24 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @SAS_ADDR(i32 %25)
  %27 = load %struct.ex_phy*, %struct.ex_phy** %5, align 8
  %28 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %31 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @SAS_ADDR(i32 %32)
  %34 = load %struct.ex_phy*, %struct.ex_phy** %6, align 8
  %35 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %38 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @SAS_ADDR(i32 %42)
  %44 = call i32 (i8*, i64, i32, i64, i32, ...) @pr_warn(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i64 %26, i32 %29, i64 %33, i32 %36, i64 %43)
  br label %150

45:                                               ; preds = %3
  %46 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %47 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @SAS_ADDR(i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %45
  %55 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %56 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %62 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %65 = call i32 @memcpy(i32 %60, i32 %63, i32 %64)
  %66 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %67 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %73 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %76 = call i32 @memcpy(i32 %71, i32 %74, i32 %75)
  br label %149

77:                                               ; preds = %45
  %78 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %79 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @SAS_ADDR(i32 %83)
  %85 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %86 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @SAS_ADDR(i32 %87)
  %89 = icmp eq i64 %84, %88
  br i1 %89, label %103, label %90

90:                                               ; preds = %77
  %91 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %92 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @SAS_ADDR(i32 %96)
  %98 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %99 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @SAS_ADDR(i32 %100)
  %102 = icmp eq i64 %97, %101
  br i1 %102, label %103, label %130

103:                                              ; preds = %90, %77
  %104 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %105 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @SAS_ADDR(i32 %109)
  %111 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %112 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @SAS_ADDR(i32 %113)
  %115 = icmp eq i64 %110, %114
  br i1 %115, label %129, label %116

116:                                              ; preds = %103
  %117 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %118 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %117, i32 0, i32 1
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @SAS_ADDR(i32 %122)
  %124 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %125 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @SAS_ADDR(i32 %126)
  %128 = icmp eq i64 %123, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %116, %103
  br label %148

130:                                              ; preds = %116, %90
  %131 = load i32, i32* @ENODEV, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %7, align 4
  %133 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %134 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i64 @SAS_ADDR(i32 %135)
  %137 = load %struct.ex_phy*, %struct.ex_phy** %5, align 8
  %138 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %141 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @SAS_ADDR(i32 %142)
  %144 = load %struct.ex_phy*, %struct.ex_phy** %6, align 8
  %145 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i8*, i64, i32, i64, i32, ...) @pr_warn(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i64 %136, i32 %139, i64 %143, i32 %146)
  br label %148

148:                                              ; preds = %130, %129
  br label %149

149:                                              ; preds = %148, %54
  br label %150

150:                                              ; preds = %149, %20
  %151 = load i32, i32* %7, align 4
  ret i32 %151
}

declare dso_local i64 @SAS_ADDR(i32) #1

declare dso_local i32 @pr_warn(i8*, i64, i32, i64, i32, ...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
