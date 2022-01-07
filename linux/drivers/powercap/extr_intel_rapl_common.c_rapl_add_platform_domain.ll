; ModuleID = '/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_rapl_add_platform_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_rapl_add_platform_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rapl_if_priv = type { i32 (i32, %struct.reg_action*)*, %struct.rapl_domain*, i32, i32** }
%struct.reg_action = type { i32, i32, i32 }
%struct.rapl_domain = type { i64, i32, i32, %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.powercap_zone = type { i32 }

@RAPL_DOMAIN_PLATFORM = common dso_local global i64 0, align 8
@RAPL_DOMAIN_REG_STATUS = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@RAPL_DOMAIN_REG_LIMIT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rapl_domain_names = common dso_local global i32* null, align 8
@PL1_ENABLE = common dso_local global i32 0, align 4
@pl1_name = common dso_local global i32 0, align 4
@PL2_ENABLE = common dso_local global i32 0, align 4
@pl2_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"psys\00", align 1
@zone_ops = common dso_local global i32* null, align 8
@constraint_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rapl_add_platform_domain(%struct.rapl_if_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rapl_if_priv*, align 8
  %4 = alloca %struct.rapl_domain*, align 8
  %5 = alloca %struct.powercap_zone*, align 8
  %6 = alloca %struct.reg_action, align 4
  %7 = alloca i32, align 4
  store %struct.rapl_if_priv* %0, %struct.rapl_if_priv** %3, align 8
  %8 = load %struct.rapl_if_priv*, %struct.rapl_if_priv** %3, align 8
  %9 = getelementptr inbounds %struct.rapl_if_priv, %struct.rapl_if_priv* %8, i32 0, i32 3
  %10 = load i32**, i32*** %9, align 8
  %11 = load i64, i64* @RAPL_DOMAIN_PLATFORM, align 8
  %12 = getelementptr inbounds i32*, i32** %10, i64 %11
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @RAPL_DOMAIN_REG_STATUS, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.reg_action, %struct.reg_action* %6, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.reg_action, %struct.reg_action* %6, i32 0, i32 1
  store i32 -1, i32* %18, align 4
  %19 = load %struct.rapl_if_priv*, %struct.rapl_if_priv** %3, align 8
  %20 = getelementptr inbounds %struct.rapl_if_priv, %struct.rapl_if_priv* %19, i32 0, i32 0
  %21 = load i32 (i32, %struct.reg_action*)*, i32 (i32, %struct.reg_action*)** %20, align 8
  %22 = call i32 %21(i32 0, %struct.reg_action* %6)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.reg_action, %struct.reg_action* %6, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25, %1
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %152

32:                                               ; preds = %25
  %33 = load %struct.rapl_if_priv*, %struct.rapl_if_priv** %3, align 8
  %34 = getelementptr inbounds %struct.rapl_if_priv, %struct.rapl_if_priv* %33, i32 0, i32 3
  %35 = load i32**, i32*** %34, align 8
  %36 = load i64, i64* @RAPL_DOMAIN_PLATFORM, align 8
  %37 = getelementptr inbounds i32*, i32** %35, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @RAPL_DOMAIN_REG_LIMIT, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.reg_action, %struct.reg_action* %6, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.reg_action, %struct.reg_action* %6, i32 0, i32 1
  store i32 -1, i32* %43, align 4
  %44 = load %struct.rapl_if_priv*, %struct.rapl_if_priv** %3, align 8
  %45 = getelementptr inbounds %struct.rapl_if_priv, %struct.rapl_if_priv* %44, i32 0, i32 0
  %46 = load i32 (i32, %struct.reg_action*)*, i32 (i32, %struct.reg_action*)** %45, align 8
  %47 = call i32 %46(i32 0, %struct.reg_action* %6)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %32
  %51 = getelementptr inbounds %struct.reg_action, %struct.reg_action* %6, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50, %32
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %152

57:                                               ; preds = %50
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.rapl_domain* @kzalloc(i32 40, i32 %58)
  store %struct.rapl_domain* %59, %struct.rapl_domain** %4, align 8
  %60 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %61 = icmp ne %struct.rapl_domain* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %152

65:                                               ; preds = %57
  %66 = load i32*, i32** @rapl_domain_names, align 8
  %67 = load i64, i64* @RAPL_DOMAIN_PLATFORM, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %71 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 8
  %72 = load i64, i64* @RAPL_DOMAIN_PLATFORM, align 8
  %73 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %74 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.rapl_if_priv*, %struct.rapl_if_priv** %3, align 8
  %76 = getelementptr inbounds %struct.rapl_if_priv, %struct.rapl_if_priv* %75, i32 0, i32 3
  %77 = load i32**, i32*** %76, align 8
  %78 = load i64, i64* @RAPL_DOMAIN_PLATFORM, align 8
  %79 = getelementptr inbounds i32*, i32** %77, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* @RAPL_DOMAIN_REG_LIMIT, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %85 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %84, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @RAPL_DOMAIN_REG_LIMIT, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32 %83, i32* %88, align 4
  %89 = load %struct.rapl_if_priv*, %struct.rapl_if_priv** %3, align 8
  %90 = getelementptr inbounds %struct.rapl_if_priv, %struct.rapl_if_priv* %89, i32 0, i32 3
  %91 = load i32**, i32*** %90, align 8
  %92 = load i64, i64* @RAPL_DOMAIN_PLATFORM, align 8
  %93 = getelementptr inbounds i32*, i32** %91, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @RAPL_DOMAIN_REG_STATUS, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %99 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @RAPL_DOMAIN_REG_STATUS, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32 %97, i32* %102, align 4
  %103 = load i32, i32* @PL1_ENABLE, align 4
  %104 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %105 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %104, i32 0, i32 3
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  store i32 %103, i32* %108, align 4
  %109 = load i32, i32* @pl1_name, align 4
  %110 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %111 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %110, i32 0, i32 3
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i32 %109, i32* %114, align 4
  %115 = load i32, i32* @PL2_ENABLE, align 4
  %116 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %117 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %116, i32 0, i32 3
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 1
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  store i32 %115, i32* %120, align 4
  %121 = load i32, i32* @pl2_name, align 4
  %122 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %123 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %122, i32 0, i32 3
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  store i32 %121, i32* %126, align 4
  %127 = load %struct.rapl_if_priv*, %struct.rapl_if_priv** %3, align 8
  %128 = call i32 @rapl_find_package_domain(i32 0, %struct.rapl_if_priv* %127)
  %129 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %130 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 4
  %131 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %132 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %131, i32 0, i32 1
  %133 = load %struct.rapl_if_priv*, %struct.rapl_if_priv** %3, align 8
  %134 = getelementptr inbounds %struct.rapl_if_priv, %struct.rapl_if_priv* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32*, i32** @zone_ops, align 8
  %137 = load i64, i64* @RAPL_DOMAIN_PLATFORM, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = call %struct.powercap_zone* @powercap_register_zone(i32* %132, i32 %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i32* %138, i32 2, i32* @constraint_ops)
  store %struct.powercap_zone* %139, %struct.powercap_zone** %5, align 8
  %140 = load %struct.powercap_zone*, %struct.powercap_zone** %5, align 8
  %141 = call i64 @IS_ERR(%struct.powercap_zone* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %65
  %144 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %145 = call i32 @kfree(%struct.rapl_domain* %144)
  %146 = load %struct.powercap_zone*, %struct.powercap_zone** %5, align 8
  %147 = call i32 @PTR_ERR(%struct.powercap_zone* %146)
  store i32 %147, i32* %2, align 4
  br label %152

148:                                              ; preds = %65
  %149 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %150 = load %struct.rapl_if_priv*, %struct.rapl_if_priv** %3, align 8
  %151 = getelementptr inbounds %struct.rapl_if_priv, %struct.rapl_if_priv* %150, i32 0, i32 1
  store %struct.rapl_domain* %149, %struct.rapl_domain** %151, align 8
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %148, %143, %62, %54, %29
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local %struct.rapl_domain* @kzalloc(i32, i32) #1

declare dso_local i32 @rapl_find_package_domain(i32, %struct.rapl_if_priv*) #1

declare dso_local %struct.powercap_zone* @powercap_register_zone(i32*, i32, i8*, i32*, i32*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.powercap_zone*) #1

declare dso_local i32 @kfree(%struct.rapl_domain*) #1

declare dso_local i32 @PTR_ERR(%struct.powercap_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
