; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_bbc_i2c.c_bbc_i2c_read_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_bbc_i2c.c_bbc_i2c_read_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bbc_i2c_client = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bbc_i2c_read_buf(%struct.bbc_i2c_client* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bbc_i2c_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bbc_i2c_client* %0, %struct.bbc_i2c_client** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %21, %4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load %struct.bbc_i2c_client*, %struct.bbc_i2c_client** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @bbc_i2c_readb(%struct.bbc_i2c_client* %14, i8* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %28

21:                                               ; preds = %13
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %7, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  br label %10

28:                                               ; preds = %20, %10
  %29 = load i32, i32* %9, align 4
  ret i32 %29
}

declare dso_local i32 @bbc_i2c_readb(%struct.bbc_i2c_client*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
