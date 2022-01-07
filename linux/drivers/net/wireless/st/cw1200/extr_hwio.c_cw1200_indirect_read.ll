; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_hwio.c_cw1200_indirect_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_hwio.c_cw1200_indirect_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)* }

@.str = private unnamed_addr constant [35 x i8] c"Can't read more than 0xfff words.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ST90TDS_SRAM_BASE_ADDR_REG_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Can't write address register.\0A\00", align 1
@ST90TDS_CONFIG_REG_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Can't read config register.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Can't write prefetch bit.\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Can't check prefetch bit.\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Prefetch bit is not cleared.\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Can't read data port.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_indirect_read(%struct.cw1200_common* %0, i32 %1, i8* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cw1200_common*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load i64, i64* %11, align 8
  %18 = udiv i64 %17, 2
  %19 = icmp uge i64 %18, 4096
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %114

24:                                               ; preds = %6
  %25 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %26 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32 (i32)*, i32 (i32)** %28, align 8
  %30 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %31 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 %29(i32 %32)
  %34 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %35 = load i32, i32* @ST90TDS_SRAM_BASE_ADDR_REG_ID, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @__cw1200_reg_write_32(%struct.cw1200_common* %34, i32 %35, i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %24
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %103

42:                                               ; preds = %24
  %43 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %44 = load i32, i32* @ST90TDS_CONFIG_REG_ID, align 4
  %45 = call i32 @__cw1200_reg_read_32(%struct.cw1200_common* %43, i32 %44, i32* %14)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %103

50:                                               ; preds = %42
  %51 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %52 = load i32, i32* @ST90TDS_CONFIG_REG_ID, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %12, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @__cw1200_reg_write_32(%struct.cw1200_common* %51, i32 %52, i32 %55)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %103

61:                                               ; preds = %50
  store i32 0, i32* %15, align 4
  br label %62

62:                                               ; preds = %82, %61
  %63 = load i32, i32* %15, align 4
  %64 = icmp slt i32 %63, 20
  br i1 %64, label %65, label %85

65:                                               ; preds = %62
  %66 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %67 = load i32, i32* @ST90TDS_CONFIG_REG_ID, align 4
  %68 = call i32 @__cw1200_reg_read_32(%struct.cw1200_common* %66, i32 %67, i32* %14)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %103

73:                                               ; preds = %65
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %12, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  br label %85

79:                                               ; preds = %73
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @mdelay(i32 %80)
  br label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %15, align 4
  br label %62

85:                                               ; preds = %78, %62
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %12, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %103

92:                                               ; preds = %85
  %93 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %94 = load i32, i32* %13, align 4
  %95 = load i8*, i8** %10, align 8
  %96 = load i64, i64* %11, align 8
  %97 = call i32 @__cw1200_reg_read(%struct.cw1200_common* %93, i32 %94, i8* %95, i64 %96, i32 0)
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %103

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %100, %90, %71, %59, %48, %40
  %104 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %105 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32 (i32)*, i32 (i32)** %107, align 8
  %109 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %110 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 %108(i32 %111)
  %113 = load i32, i32* %16, align 4
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %103, %20
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @__cw1200_reg_write_32(%struct.cw1200_common*, i32, i32) #1

declare dso_local i32 @__cw1200_reg_read_32(%struct.cw1200_common*, i32, i32*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @__cw1200_reg_read(%struct.cw1200_common*, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
