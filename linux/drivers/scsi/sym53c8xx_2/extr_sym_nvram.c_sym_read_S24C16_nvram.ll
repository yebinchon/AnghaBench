; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_sym_read_S24C16_nvram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_sym_read_S24C16_nvram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_device = type { i32 }

@nc_gpreg = common dso_local global i32 0, align 4
@nc_gpcntl = common dso_local global i32 0, align 4
@CLR_CLK = common dso_local global i32 0, align 4
@CLR_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sym_device*, i32, i32*, i32)* @sym_read_S24C16_nvram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_read_S24C16_nvram(%struct.sym_device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.sym_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sym_device* %0, %struct.sym_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %14, align 4
  %16 = load %struct.sym_device*, %struct.sym_device** %5, align 8
  %17 = load i32, i32* @nc_gpreg, align 4
  %18 = call i32 @INB(%struct.sym_device* %16, i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load %struct.sym_device*, %struct.sym_device** %5, align 8
  %20 = load i32, i32* @nc_gpcntl, align 4
  %21 = call i32 @INB(%struct.sym_device* %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = and i32 %22, 28
  store i32 %23, i32* %9, align 4
  %24 = load %struct.sym_device*, %struct.sym_device** %5, align 8
  %25 = load i32, i32* @nc_gpreg, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @OUTB(%struct.sym_device* %24, i32 %25, i32 %26)
  %28 = load %struct.sym_device*, %struct.sym_device** %5, align 8
  %29 = load i32, i32* @nc_gpcntl, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @OUTB(%struct.sym_device* %28, i32 %29, i32 %30)
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.sym_device*, %struct.sym_device** %5, align 8
  %34 = load i32, i32* @CLR_CLK, align 4
  %35 = call i32 @S24C16_set_bit(%struct.sym_device* %33, i32 0, i32* %10, i32 %34)
  %36 = load %struct.sym_device*, %struct.sym_device** %5, align 8
  %37 = load i32, i32* @CLR_BIT, align 4
  %38 = call i32 @S24C16_set_bit(%struct.sym_device* %36, i32 0, i32* %10, i32 %37)
  %39 = load %struct.sym_device*, %struct.sym_device** %5, align 8
  %40 = call i32 @S24C16_stop(%struct.sym_device* %39, i32* %10)
  %41 = load %struct.sym_device*, %struct.sym_device** %5, align 8
  %42 = call i32 @S24C16_start(%struct.sym_device* %41, i32* %10)
  %43 = load %struct.sym_device*, %struct.sym_device** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = ashr i32 %44, 7
  %46 = and i32 %45, 14
  %47 = or i32 160, %46
  %48 = call i32 @S24C16_write_byte(%struct.sym_device* %43, i32* %13, i32 %47, i32* %10, i32* %9)
  %49 = load i32, i32* %13, align 4
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %4
  br label %110

53:                                               ; preds = %4
  %54 = load %struct.sym_device*, %struct.sym_device** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 255
  %57 = call i32 @S24C16_write_byte(%struct.sym_device* %54, i32* %13, i32 %56, i32* %10, i32* %9)
  %58 = load i32, i32* %13, align 4
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %110

62:                                               ; preds = %53
  %63 = load %struct.sym_device*, %struct.sym_device** %5, align 8
  %64 = call i32 @S24C16_start(%struct.sym_device* %63, i32* %10)
  %65 = load %struct.sym_device*, %struct.sym_device** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = ashr i32 %66, 7
  %68 = and i32 %67, 14
  %69 = or i32 161, %68
  %70 = call i32 @S24C16_write_byte(%struct.sym_device* %65, i32* %13, i32 %69, i32* %10, i32* %9)
  %71 = load i32, i32* %13, align 4
  %72 = and i32 %71, 1
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %110

75:                                               ; preds = %62
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %76, 1
  store i32 %77, i32* %9, align 4
  %78 = load %struct.sym_device*, %struct.sym_device** %5, align 8
  %79 = load i32, i32* @nc_gpcntl, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @OUTB(%struct.sym_device* %78, i32 %79, i32 %80)
  store i32 0, i32* %15, align 4
  br label %82

82:                                               ; preds = %98, %75
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %82
  %87 = load %struct.sym_device*, %struct.sym_device** %5, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %8, align 4
  %94 = sub nsw i32 %93, 1
  %95 = icmp eq i32 %92, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @S24C16_read_byte(%struct.sym_device* %87, i32* %91, i32 %96, i32* %10, i32* %9)
  br label %98

98:                                               ; preds = %86
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %15, align 4
  br label %82

101:                                              ; preds = %82
  %102 = load i32, i32* %9, align 4
  %103 = and i32 %102, 254
  store i32 %103, i32* %9, align 4
  %104 = load %struct.sym_device*, %struct.sym_device** %5, align 8
  %105 = load i32, i32* @nc_gpcntl, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @OUTB(%struct.sym_device* %104, i32 %105, i32 %106)
  %108 = load %struct.sym_device*, %struct.sym_device** %5, align 8
  %109 = call i32 @S24C16_stop(%struct.sym_device* %108, i32* %10)
  store i32 0, i32* %14, align 4
  br label %110

110:                                              ; preds = %101, %74, %61, %52
  %111 = load %struct.sym_device*, %struct.sym_device** %5, align 8
  %112 = load i32, i32* @nc_gpcntl, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @OUTB(%struct.sym_device* %111, i32 %112, i32 %113)
  %115 = load %struct.sym_device*, %struct.sym_device** %5, align 8
  %116 = load i32, i32* @nc_gpreg, align 4
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @OUTB(%struct.sym_device* %115, i32 %116, i32 %117)
  %119 = load i32, i32* %14, align 4
  ret i32 %119
}

declare dso_local i32 @INB(%struct.sym_device*, i32) #1

declare dso_local i32 @OUTB(%struct.sym_device*, i32, i32) #1

declare dso_local i32 @S24C16_set_bit(%struct.sym_device*, i32, i32*, i32) #1

declare dso_local i32 @S24C16_stop(%struct.sym_device*, i32*) #1

declare dso_local i32 @S24C16_start(%struct.sym_device*, i32*) #1

declare dso_local i32 @S24C16_write_byte(%struct.sym_device*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @S24C16_read_byte(%struct.sym_device*, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
