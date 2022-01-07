; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_lm_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_lm_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_lm_resource = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device*, %struct.ca91cx42_driver* }
%struct.device = type { i32 }
%struct.ca91cx42_driver = type { i64, i64* }

@.str = private unnamed_addr constant [50 x i8] c"Location monitor must be aligned to 64KB boundary\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Location monitor callback attached, can't reset\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@CA91CX42_LM_CTL_AS_A16 = common dso_local global i32 0, align 4
@CA91CX42_LM_CTL_AS_A24 = common dso_local global i32 0, align 4
@CA91CX42_LM_CTL_AS_A32 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid address space\0A\00", align 1
@VME_SUPER = common dso_local global i32 0, align 4
@CA91CX42_LM_CTL_SUPR = common dso_local global i32 0, align 4
@VME_USER = common dso_local global i32 0, align 4
@CA91CX42_LM_CTL_NPRIV = common dso_local global i32 0, align 4
@VME_PROG = common dso_local global i32 0, align 4
@CA91CX42_LM_CTL_PGM = common dso_local global i32 0, align 4
@VME_DATA = common dso_local global i32 0, align 4
@CA91CX42_LM_CTL_DATA = common dso_local global i32 0, align 4
@LM_BS = common dso_local global i64 0, align 8
@LM_CTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_lm_resource*, i64, i32, i32)* @ca91cx42_lm_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca91cx42_lm_set(%struct.vme_lm_resource* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vme_lm_resource*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ca91cx42_driver*, align 8
  %14 = alloca %struct.device*, align 8
  store %struct.vme_lm_resource* %0, %struct.vme_lm_resource** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %6, align 8
  %16 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %18, align 8
  store %struct.ca91cx42_driver* %19, %struct.ca91cx42_driver** %13, align 8
  %20 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %6, align 8
  %21 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.device*, %struct.device** %23, align 8
  store %struct.device* %24, %struct.device** %14, align 8
  %25 = load i64, i64* %7, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = and i32 %27, 65535
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load %struct.device*, %struct.device** %14, align 8
  %32 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %143

35:                                               ; preds = %4
  %36 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %6, align 8
  %37 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %36, i32 0, i32 1
  %38 = call i32 @mutex_lock(i32* %37)
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %63, %35
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %6, align 8
  %42 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %39
  %46 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %13, align 8
  %47 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %45
  %55 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %6, align 8
  %56 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %55, i32 0, i32 1
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load %struct.device*, %struct.device** %14, align 8
  %59 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %143

62:                                               ; preds = %45
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %39

66:                                               ; preds = %39
  %67 = load i32, i32* %8, align 4
  switch i32 %67, label %80 [
    i32 130, label %68
    i32 129, label %72
    i32 128, label %76
  ]

68:                                               ; preds = %66
  %69 = load i32, i32* @CA91CX42_LM_CTL_AS_A16, align 4
  %70 = load i32, i32* %11, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %11, align 4
  br label %88

72:                                               ; preds = %66
  %73 = load i32, i32* @CA91CX42_LM_CTL_AS_A24, align 4
  %74 = load i32, i32* %11, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %11, align 4
  br label %88

76:                                               ; preds = %66
  %77 = load i32, i32* @CA91CX42_LM_CTL_AS_A32, align 4
  %78 = load i32, i32* %11, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %11, align 4
  br label %88

80:                                               ; preds = %66
  %81 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %6, align 8
  %82 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %81, i32 0, i32 1
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load %struct.device*, %struct.device** %14, align 8
  %85 = call i32 @dev_err(%struct.device* %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %143

88:                                               ; preds = %76, %72, %68
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @VME_SUPER, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* @CA91CX42_LM_CTL_SUPR, align 4
  %95 = load i32, i32* %11, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %93, %88
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @VME_USER, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i32, i32* @CA91CX42_LM_CTL_NPRIV, align 4
  %104 = load i32, i32* %11, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %102, %97
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @VME_PROG, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* @CA91CX42_LM_CTL_PGM, align 4
  %113 = load i32, i32* %11, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %111, %106
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @VME_DATA, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* @CA91CX42_LM_CTL_DATA, align 4
  %122 = load i32, i32* %11, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %120, %115
  %125 = load i64, i64* %7, align 8
  %126 = trunc i64 %125 to i32
  %127 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %13, align 8
  %128 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @LM_BS, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @iowrite32(i32 %126, i64 %131)
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %13, align 8
  %135 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @LM_CTL, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @iowrite32(i32 %133, i64 %138)
  %140 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %6, align 8
  %141 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %140, i32 0, i32 1
  %142 = call i32 @mutex_unlock(i32* %141)
  store i32 0, i32* %5, align 4
  br label %143

143:                                              ; preds = %124, %80, %54, %30
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
