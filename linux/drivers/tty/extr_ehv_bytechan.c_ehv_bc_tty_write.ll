; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_ehv_bytechan.c_ehv_bc_tty_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_ehv_bytechan.c_ehv_bc_tty_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.ehv_bc_data* }
%struct.ehv_bc_data = type { i32, i32, i64, i32 }

@BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @ehv_bc_tty_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehv_bc_tty_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ehv_bc_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 0
  %13 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %12, align 8
  store %struct.ehv_bc_data* %13, %struct.ehv_bc_data** %7, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %3, %65
  %15 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %7, align 8
  %16 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %15, i32 0, i32 1
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %7, align 8
  %20 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %7, align 8
  %23 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BUF_SIZE, align 4
  %26 = call i32 @CIRC_SPACE_TO_END(i32 %21, i32 %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %14
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %30, %14
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %32
  %36 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %7, align 8
  %37 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %7, align 8
  %40 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = zext i32 %41 to i64
  %43 = add nsw i64 %38, %42
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @memcpy(i64 %43, i8* %44, i32 %45)
  %47 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %7, align 8
  %48 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = add i32 %49, %50
  %52 = load i32, i32* @BUF_SIZE, align 4
  %53 = sub nsw i32 %52, 1
  %54 = and i32 %51, %53
  %55 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %7, align 8
  %56 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %35, %32
  %58 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %7, align 8
  %59 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %58, i32 0, i32 1
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  br label %76

65:                                               ; preds = %57
  %66 = load i32, i32* %9, align 4
  %67 = load i8*, i8** %5, align 8
  %68 = zext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %6, align 4
  %72 = sub i32 %71, %70
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = add i32 %74, %73
  store i32 %75, i32* %10, align 4
  br label %14

76:                                               ; preds = %64
  %77 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %7, align 8
  %78 = call i32 @ehv_bc_tx_dequeue(%struct.ehv_bc_data* %77)
  %79 = load i32, i32* %10, align 4
  ret i32 %79
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @CIRC_SPACE_TO_END(i32, i32, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ehv_bc_tx_dequeue(%struct.ehv_bc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
