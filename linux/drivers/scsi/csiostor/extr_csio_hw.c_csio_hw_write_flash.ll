; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_write_flash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_write_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SF_PAGE_SIZE = common dso_local global i32 0, align 4
@SF_PROG_PAGE = common dso_local global i32 0, align 4
@SF_WR_ENABLE = common dso_local global i32 0, align 4
@SF_OP_A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"failed to correctly write the flash page at %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_hw*, i32, i32, i32*)* @csio_hw_write_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_hw_write_flash(%struct.csio_hw* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.csio_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [64 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 255
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %23 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %21, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %28, %29
  %31 = load i32, i32* @SF_PAGE_SIZE, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %4
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %139

36:                                               ; preds = %27
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @swab32(i32 %37)
  %39 = load i32, i32* @SF_PROG_PAGE, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %15, align 4
  %41 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %42 = load i32, i32* @SF_WR_ENABLE, align 4
  %43 = call i32 @csio_hw_sf1_write(%struct.csio_hw* %41, i32 1, i32 0, i32 1, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %134

47:                                               ; preds = %36
  %48 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @csio_hw_sf1_write(%struct.csio_hw* %48, i32 4, i32 1, i32 1, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %134

54:                                               ; preds = %47
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %89, %54
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %93

59:                                               ; preds = %56
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @min(i32 %60, i32 4)
  store i32 %61, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %73, %59
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load i32, i32* %15, align 4
  %68 = shl i32 %67, 8
  %69 = load i32*, i32** %9, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %9, align 8
  %71 = load i32, i32* %69, align 4
  %72 = add nsw i32 %68, %71
  store i32 %72, i32* %15, align 4
  br label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %62

76:                                               ; preds = %62
  %77 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @csio_hw_sf1_write(%struct.csio_hw* %77, i32 %78, i32 %82, i32 1, i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  br label %134

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %14, align 4
  %92 = sub nsw i32 %91, %90
  store i32 %92, i32* %14, align 4
  br label %56

93:                                               ; preds = %56
  %94 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %95 = call i32 @csio_hw_flash_wait_op(%struct.csio_hw* %94, i32 8, i32 1)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %134

99:                                               ; preds = %93
  %100 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %101 = load i32, i32* @SF_OP_A, align 4
  %102 = call i32 @csio_wr_reg32(%struct.csio_hw* %100, i32 0, i32 %101)
  %103 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %104 = load i32, i32* %7, align 4
  %105 = and i32 %104, -256
  %106 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %107 = call i32 @ARRAY_SIZE(i32* %106)
  %108 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %109 = call i32 @csio_hw_read_flash(%struct.csio_hw* %103, i32 %105, i32 %107, i32* %108, i32 1)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %99
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %5, align 4
  br label %139

114:                                              ; preds = %99
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = sub i64 0, %117
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %8, align 4
  %125 = call i64 @memcmp(i32* %119, i32* %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %114
  %128 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @csio_err(%struct.csio_hw* %128, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %5, align 4
  br label %139

133:                                              ; preds = %114
  store i32 0, i32* %5, align 4
  br label %139

134:                                              ; preds = %98, %87, %53, %46
  %135 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %136 = load i32, i32* @SF_OP_A, align 4
  %137 = call i32 @csio_wr_reg32(%struct.csio_hw* %135, i32 0, i32 %136)
  %138 = load i32, i32* %10, align 4
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %134, %133, %127, %112, %33
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @csio_hw_sf1_write(%struct.csio_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @csio_hw_flash_wait_op(%struct.csio_hw*, i32, i32) #1

declare dso_local i32 @csio_wr_reg32(%struct.csio_hw*, i32, i32) #1

declare dso_local i32 @csio_hw_read_flash(%struct.csio_hw*, i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @csio_err(%struct.csio_hw*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
