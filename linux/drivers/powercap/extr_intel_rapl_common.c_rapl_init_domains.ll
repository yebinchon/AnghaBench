; ModuleID = '/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_rapl_init_domains.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_rapl_init_domains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.rapl_package = type { i32, %struct.TYPE_5__*, %struct.rapl_domain* }
%struct.TYPE_5__ = type { i32*, i32** }
%struct.rapl_domain = type { i32, i64, i32*, %struct.TYPE_4__*, i32, %struct.rapl_package* }
%struct.TYPE_4__ = type { i32, i32 }

@RAPL_DOMAIN_MAX = common dso_local global i32 0, align 4
@rapl_domain_names = common dso_local global i32* null, align 8
@PL1_ENABLE = common dso_local global i32 0, align 4
@pl1_name = common dso_local global i32 0, align 4
@PL2_ENABLE = common dso_local global i32 0, align 4
@pl2_name = common dso_local global i32 0, align 4
@RAPL_DOMAIN_REG_MAX = common dso_local global i32 0, align 4
@RAPL_DOMAIN_DRAM = common dso_local global i32 0, align 4
@rapl_defaults = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"DRAM domain energy unit %dpj\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rapl_package*)* @rapl_init_domains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rapl_init_domains(%struct.rapl_package* %0) #0 {
  %2 = alloca %struct.rapl_package*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rapl_domain*, align 8
  %6 = alloca i32, align 4
  store %struct.rapl_package* %0, %struct.rapl_package** %2, align 8
  %7 = load %struct.rapl_package*, %struct.rapl_package** %2, align 8
  %8 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %7, i32 0, i32 2
  %9 = load %struct.rapl_domain*, %struct.rapl_domain** %8, align 8
  store %struct.rapl_domain* %9, %struct.rapl_domain** %5, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %124, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @RAPL_DOMAIN_MAX, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %127

14:                                               ; preds = %10
  %15 = load %struct.rapl_package*, %struct.rapl_package** %2, align 8
  %16 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  br label %124

24:                                               ; preds = %14
  %25 = load %struct.rapl_package*, %struct.rapl_package** %2, align 8
  %26 = load %struct.rapl_domain*, %struct.rapl_domain** %5, align 8
  %27 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %26, i32 0, i32 5
  store %struct.rapl_package* %25, %struct.rapl_package** %27, align 8
  %28 = load i32*, i32** @rapl_domain_names, align 8
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.rapl_domain*, %struct.rapl_domain** %5, align 8
  %34 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.rapl_domain*, %struct.rapl_domain** %5, align 8
  %37 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @PL1_ENABLE, align 4
  %39 = load %struct.rapl_domain*, %struct.rapl_domain** %5, align 8
  %40 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %39, i32 0, i32 3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 %38, i32* %43, align 4
  %44 = load i32, i32* @pl1_name, align 4
  %45 = load %struct.rapl_domain*, %struct.rapl_domain** %5, align 8
  %46 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %44, i32* %49, align 4
  %50 = load %struct.rapl_package*, %struct.rapl_package** %2, align 8
  %51 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %73

60:                                               ; preds = %24
  %61 = load i32, i32* @PL2_ENABLE, align 4
  %62 = load %struct.rapl_domain*, %struct.rapl_domain** %5, align 8
  %63 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %62, i32 0, i32 3
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 %61, i32* %66, align 4
  %67 = load i32, i32* @pl2_name, align 4
  %68 = load %struct.rapl_domain*, %struct.rapl_domain** %5, align 8
  %69 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %68, i32 0, i32 3
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %67, i32* %72, align 4
  br label %73

73:                                               ; preds = %60, %24
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %98, %73
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @RAPL_DOMAIN_REG_MAX, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %101

78:                                               ; preds = %74
  %79 = load %struct.rapl_package*, %struct.rapl_package** %2, align 8
  %80 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32**, i32*** %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.rapl_domain*, %struct.rapl_domain** %5, align 8
  %93 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %91, i32* %97, align 4
  br label %98

98:                                               ; preds = %78
  %99 = load i32, i32* %4, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %4, align 4
  br label %74

101:                                              ; preds = %74
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @RAPL_DOMAIN_DRAM, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %101
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rapl_defaults, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.rapl_domain*, %struct.rapl_domain** %5, align 8
  %110 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  %111 = load %struct.rapl_domain*, %struct.rapl_domain** %5, align 8
  %112 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %105
  %116 = load %struct.rapl_domain*, %struct.rapl_domain** %5, align 8
  %117 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %118)
  br label %120

120:                                              ; preds = %115, %105
  br label %121

121:                                              ; preds = %120, %101
  %122 = load %struct.rapl_domain*, %struct.rapl_domain** %5, align 8
  %123 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %122, i32 1
  store %struct.rapl_domain* %123, %struct.rapl_domain** %5, align 8
  br label %124

124:                                              ; preds = %121, %23
  %125 = load i32, i32* %3, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %3, align 4
  br label %10

127:                                              ; preds = %10
  ret void
}

declare dso_local i32 @pr_info(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
