; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp3972.c_lp3972_set_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp3972.c_lp3972_set_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp3972 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"reg write 0x%02x -> 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp3972*, i64, i32, i32)* @lp3972_set_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp3972_set_bits(%struct.lp3972* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.lp3972*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lp3972* %0, %struct.lp3972** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.lp3972*, %struct.lp3972** %5, align 8
  %12 = getelementptr inbounds %struct.lp3972, %struct.lp3972* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.lp3972*, %struct.lp3972** %5, align 8
  %15 = getelementptr inbounds %struct.lp3972, %struct.lp3972* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @lp3972_i2c_read(i32 %16, i64 %17, i32 1, i32* %9)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load %struct.lp3972*, %struct.lp3972** %5, align 8
  %29 = getelementptr inbounds %struct.lp3972, %struct.lp3972* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @lp3972_i2c_write(i32 %30, i64 %31, i32 1, i32* %9)
  store i32 %32, i32* %10, align 4
  %33 = load %struct.lp3972*, %struct.lp3972** %5, align 8
  %34 = getelementptr inbounds %struct.lp3972, %struct.lp3972* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %6, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, 255
  %40 = call i32 @dev_dbg(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %21, %4
  %42 = load %struct.lp3972*, %struct.lp3972** %5, align 8
  %43 = getelementptr inbounds %struct.lp3972, %struct.lp3972* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i32, i32* %10, align 4
  ret i32 %45
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lp3972_i2c_read(i32, i64, i32, i32*) #1

declare dso_local i32 @lp3972_i2c_write(i32, i64, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
