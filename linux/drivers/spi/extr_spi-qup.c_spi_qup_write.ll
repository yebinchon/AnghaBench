; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qup.c_spi_qup_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qup.c_spi_qup_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_qup = type { i64, i32, i64, i32, i64 }

@QUP_IO_M_MODE_BLOCK = common dso_local global i64 0, align 8
@QUP_OP_OUT_SERVICE_FLAG = common dso_local global i32 0, align 4
@QUP_OPERATIONAL = common dso_local global i64 0, align 8
@QUP_OP_OUT_FIFO_FULL = common dso_local global i32 0, align 4
@QUP_OP_OUT_BLOCK_WRITE_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_qup*)* @spi_qup_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_qup_write(%struct.spi_qup* %0) #0 {
  %2 = alloca %struct.spi_qup*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.spi_qup* %0, %struct.spi_qup** %2, align 8
  %7 = load %struct.spi_qup*, %struct.spi_qup** %2, align 8
  %8 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @QUP_IO_M_MODE_BLOCK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %3, align 4
  %13 = load %struct.spi_qup*, %struct.spi_qup** %2, align 8
  %14 = call i64 @spi_qup_len(%struct.spi_qup* %13)
  %15 = load %struct.spi_qup*, %struct.spi_qup** %2, align 8
  %16 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  %19 = load %struct.spi_qup*, %struct.spi_qup** %2, align 8
  %20 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @DIV_ROUND_UP(i64 %18, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.spi_qup*, %struct.spi_qup** %2, align 8
  %24 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = ashr i32 %25, 2
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %74, %1
  %28 = load i32, i32* @QUP_OP_OUT_SERVICE_FLAG, align 4
  %29 = load %struct.spi_qup*, %struct.spi_qup** %2, align 8
  %30 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @QUP_OPERATIONAL, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel_relaxed(i32 %28, i64 %33)
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  br label %77

38:                                               ; preds = %27
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %6, align 4
  br label %58

51:                                               ; preds = %38
  %52 = load %struct.spi_qup*, %struct.spi_qup** %2, align 8
  %53 = load i32, i32* @QUP_OP_OUT_FIFO_FULL, align 4
  %54 = call i64 @spi_qup_is_flag_set(%struct.spi_qup* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %77

57:                                               ; preds = %51
  store i32 1, i32* %6, align 4
  br label %58

58:                                               ; preds = %57, %49
  %59 = load %struct.spi_qup*, %struct.spi_qup** %2, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @spi_qup_write_to_fifo(%struct.spi_qup* %59, i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %4, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %3, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %58
  %68 = load %struct.spi_qup*, %struct.spi_qup** %2, align 8
  %69 = load i32, i32* @QUP_OP_OUT_BLOCK_WRITE_REQ, align 4
  %70 = call i64 @spi_qup_is_flag_set(%struct.spi_qup* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  br label %77

73:                                               ; preds = %67, %58
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %27, label %77

77:                                               ; preds = %37, %74, %72, %56
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i64 @spi_qup_len(%struct.spi_qup*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @spi_qup_is_flag_set(%struct.spi_qup*, i32) #1

declare dso_local i32 @spi_qup_write_to_fifo(%struct.spi_qup*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
