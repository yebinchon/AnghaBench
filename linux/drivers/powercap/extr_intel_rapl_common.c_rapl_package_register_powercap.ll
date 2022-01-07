; ModuleID = '/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_rapl_package_register_powercap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_rapl_package_register_powercap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rapl_package = type { i32, %struct.TYPE_2__*, i32, %struct.rapl_domain*, %struct.powercap_zone* }
%struct.TYPE_2__ = type { i32 }
%struct.rapl_domain = type { i64, i32, i32 }
%struct.powercap_zone = type { i32 }

@RAPL_DOMAIN_PACKAGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"register package domain %s\0A\00", align 1
@zone_ops = common dso_local global i32* null, align 8
@constraint_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to register power zone %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"no package domain found, unknown topology!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to register power_zone, %s:%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"unregister %s domain %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rapl_package*)* @rapl_package_register_powercap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rapl_package_register_powercap(%struct.rapl_package* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rapl_package*, align 8
  %4 = alloca %struct.rapl_domain*, align 8
  %5 = alloca %struct.powercap_zone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rapl_package* %0, %struct.rapl_package** %3, align 8
  store %struct.powercap_zone* null, %struct.powercap_zone** %5, align 8
  %8 = load %struct.rapl_package*, %struct.rapl_package** %3, align 8
  %9 = call i32 @rapl_update_domain_data(%struct.rapl_package* %8)
  %10 = load %struct.rapl_package*, %struct.rapl_package** %3, align 8
  %11 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %10, i32 0, i32 3
  %12 = load %struct.rapl_domain*, %struct.rapl_domain** %11, align 8
  store %struct.rapl_domain* %12, %struct.rapl_domain** %4, align 8
  br label %13

13:                                               ; preds = %69, %1
  %14 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %15 = load %struct.rapl_package*, %struct.rapl_package** %3, align 8
  %16 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %15, i32 0, i32 3
  %17 = load %struct.rapl_domain*, %struct.rapl_domain** %16, align 8
  %18 = load %struct.rapl_package*, %struct.rapl_package** %3, align 8
  %19 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %17, i64 %21
  %23 = icmp ult %struct.rapl_domain* %14, %22
  br i1 %23, label %24, label %72

24:                                               ; preds = %13
  %25 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %26 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RAPL_DOMAIN_PACKAGE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %68

30:                                               ; preds = %24
  %31 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %32 = call i32 @find_nr_power_limit(%struct.rapl_domain* %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.rapl_package*, %struct.rapl_package** %3, align 8
  %34 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %38 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %37, i32 0, i32 1
  %39 = load %struct.rapl_package*, %struct.rapl_package** %3, align 8
  %40 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.rapl_package*, %struct.rapl_package** %3, align 8
  %45 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** @zone_ops, align 8
  %48 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %49 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %6, align 4
  %53 = call %struct.powercap_zone* @powercap_register_zone(i32* %38, i32 %43, i32 %46, %struct.powercap_zone* null, i32* %51, i32 %52, i32* @constraint_ops)
  store %struct.powercap_zone* %53, %struct.powercap_zone** %5, align 8
  %54 = load %struct.powercap_zone*, %struct.powercap_zone** %5, align 8
  %55 = call i64 @IS_ERR(%struct.powercap_zone* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %30
  %58 = load %struct.rapl_package*, %struct.rapl_package** %3, align 8
  %59 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.powercap_zone*, %struct.powercap_zone** %5, align 8
  %63 = call i32 @PTR_ERR(%struct.powercap_zone* %62)
  store i32 %63, i32* %2, align 4
  br label %168

64:                                               ; preds = %30
  %65 = load %struct.powercap_zone*, %struct.powercap_zone** %5, align 8
  %66 = load %struct.rapl_package*, %struct.rapl_package** %3, align 8
  %67 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %66, i32 0, i32 4
  store %struct.powercap_zone* %65, %struct.powercap_zone** %67, align 8
  br label %72

68:                                               ; preds = %24
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %71 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %70, i32 1
  store %struct.rapl_domain* %71, %struct.rapl_domain** %4, align 8
  br label %13

72:                                               ; preds = %64, %13
  %73 = load %struct.powercap_zone*, %struct.powercap_zone** %5, align 8
  %74 = icmp ne %struct.powercap_zone* %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %168

79:                                               ; preds = %72
  %80 = load %struct.rapl_package*, %struct.rapl_package** %3, align 8
  %81 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %80, i32 0, i32 3
  %82 = load %struct.rapl_domain*, %struct.rapl_domain** %81, align 8
  store %struct.rapl_domain* %82, %struct.rapl_domain** %4, align 8
  br label %83

83:                                               ; preds = %138, %79
  %84 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %85 = load %struct.rapl_package*, %struct.rapl_package** %3, align 8
  %86 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %85, i32 0, i32 3
  %87 = load %struct.rapl_domain*, %struct.rapl_domain** %86, align 8
  %88 = load %struct.rapl_package*, %struct.rapl_package** %3, align 8
  %89 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %87, i64 %91
  %93 = icmp ult %struct.rapl_domain* %84, %92
  br i1 %93, label %94, label %141

94:                                               ; preds = %83
  %95 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %96 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @RAPL_DOMAIN_PACKAGE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %138

101:                                              ; preds = %94
  %102 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %103 = call i32 @find_nr_power_limit(%struct.rapl_domain* %102)
  store i32 %103, i32* %6, align 4
  %104 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %105 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %104, i32 0, i32 1
  %106 = load %struct.rapl_package*, %struct.rapl_package** %3, align 8
  %107 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %112 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.rapl_package*, %struct.rapl_package** %3, align 8
  %115 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %114, i32 0, i32 4
  %116 = load %struct.powercap_zone*, %struct.powercap_zone** %115, align 8
  %117 = load i32*, i32** @zone_ops, align 8
  %118 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %119 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i32, i32* %6, align 4
  %123 = call %struct.powercap_zone* @powercap_register_zone(i32* %105, i32 %110, i32 %113, %struct.powercap_zone* %116, i32* %121, i32 %122, i32* @constraint_ops)
  store %struct.powercap_zone* %123, %struct.powercap_zone** %5, align 8
  %124 = load %struct.powercap_zone*, %struct.powercap_zone** %5, align 8
  %125 = call i64 @IS_ERR(%struct.powercap_zone* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %101
  %128 = load %struct.rapl_package*, %struct.rapl_package** %3, align 8
  %129 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %132 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %130, i32 %133)
  %135 = load %struct.powercap_zone*, %struct.powercap_zone** %5, align 8
  %136 = call i32 @PTR_ERR(%struct.powercap_zone* %135)
  store i32 %136, i32* %7, align 4
  br label %142

137:                                              ; preds = %101
  br label %138

138:                                              ; preds = %137, %100
  %139 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %140 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %139, i32 1
  store %struct.rapl_domain* %140, %struct.rapl_domain** %4, align 8
  br label %83

141:                                              ; preds = %83
  store i32 0, i32* %2, align 4
  br label %168

142:                                              ; preds = %127
  br label %143

143:                                              ; preds = %150, %142
  %144 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %145 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %144, i32 -1
  store %struct.rapl_domain* %145, %struct.rapl_domain** %4, align 8
  %146 = load %struct.rapl_package*, %struct.rapl_package** %3, align 8
  %147 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %146, i32 0, i32 3
  %148 = load %struct.rapl_domain*, %struct.rapl_domain** %147, align 8
  %149 = icmp uge %struct.rapl_domain* %145, %148
  br i1 %149, label %150, label %166

150:                                              ; preds = %143
  %151 = load %struct.rapl_package*, %struct.rapl_package** %3, align 8
  %152 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %155 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %153, i32 %156)
  %158 = load %struct.rapl_package*, %struct.rapl_package** %3, align 8
  %159 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %158, i32 0, i32 1
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %164 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %163, i32 0, i32 1
  %165 = call i32 @powercap_unregister_zone(i32 %162, i32* %164)
  br label %143

166:                                              ; preds = %143
  %167 = load i32, i32* %7, align 4
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %166, %141, %75, %57
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i32 @rapl_update_domain_data(%struct.rapl_package*) #1

declare dso_local i32 @find_nr_power_limit(%struct.rapl_domain*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local %struct.powercap_zone* @powercap_register_zone(i32*, i32, i32, %struct.powercap_zone*, i32*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.powercap_zone*) #1

declare dso_local i32 @PTR_ERR(%struct.powercap_zone*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @powercap_unregister_zone(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
