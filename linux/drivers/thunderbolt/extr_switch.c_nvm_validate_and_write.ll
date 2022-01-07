; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_nvm_validate_and_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_nvm_validate_and_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@NVM_MIN_SIZE = common dso_local global i32 0, align 4
@NVM_MAX_SIZE = common dso_local global i32 0, align 4
@NVM_DEVID = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i32 0, align 4
@DMA_PORT_CSS_ADDRESS = common dso_local global i32 0, align 4
@NVM_CSS = common dso_local global i32 0, align 4
@DMA_PORT_CSS_MAX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_switch*)* @nvm_validate_and_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvm_validate_and_write(%struct.tb_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tb_switch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tb_switch* %0, %struct.tb_switch** %3, align 8
  %10 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %11 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %10, i32 0, i32 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %128

20:                                               ; preds = %1
  %21 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %22 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %21, i32 0, i32 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @NVM_MIN_SIZE, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @NVM_MAX_SIZE, align 4
  %32 = icmp ugt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %20
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %128

36:                                               ; preds = %29
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 16777215
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @NVM_DEVID, align 4
  %42 = add i32 %40, %41
  %43 = add i32 %42, 2
  %44 = load i32, i32* %4, align 4
  %45 = icmp uge i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %128

49:                                               ; preds = %36
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @SZ_4K, align 4
  %52 = call i32 @IS_ALIGNED(i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %128

57:                                               ; preds = %49
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %5, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp uge i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %128

69:                                               ; preds = %57
  %70 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %71 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %121, label %74

74:                                               ; preds = %69
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %5, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* @NVM_DEVID, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %85 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %83, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %74
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %128

92:                                               ; preds = %74
  %93 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %94 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %95, 3
  br i1 %96, label %97, label %113

97:                                               ; preds = %92
  %98 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %99 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @DMA_PORT_CSS_ADDRESS, align 4
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* @NVM_CSS, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* @DMA_PORT_CSS_MAX_SIZE, align 4
  %107 = call i32 @dma_port_flash_write(i32 %100, i32 %101, i32* %105, i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %97
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %2, align 4
  br label %128

112:                                              ; preds = %97
  br label %113

113:                                              ; preds = %112, %92
  %114 = load i32, i32* %5, align 4
  %115 = load i32*, i32** %6, align 8
  %116 = zext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32* %117, i32** %6, align 8
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %4, align 4
  %120 = sub i32 %119, %118
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %113, %69
  %122 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %123 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @dma_port_flash_write(i32 %124, i32 0, i32* %125, i32 %126)
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %121, %110, %89, %66, %54, %46, %33, %17
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @dma_port_flash_write(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
