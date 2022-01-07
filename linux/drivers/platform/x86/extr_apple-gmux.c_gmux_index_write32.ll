; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_apple-gmux.c_gmux_index_write32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_apple-gmux.c_gmux_index_write32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apple_gmux_data = type { i32, i64 }

@GMUX_PORT_VALUE = common dso_local global i64 0, align 8
@GMUX_PORT_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.apple_gmux_data*, i32, i32)* @gmux_index_write32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmux_index_write32(%struct.apple_gmux_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.apple_gmux_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.apple_gmux_data* %0, %struct.apple_gmux_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %4, align 8
  %10 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %31, %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = mul nsw i32 %17, 8
  %19 = ashr i32 %16, %18
  %20 = and i32 %19, 255
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %4, align 8
  %23 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @GMUX_PORT_VALUE, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = call i32 @outb(i32 %21, i64 %29)
  br label %31

31:                                               ; preds = %15
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %12

34:                                               ; preds = %12
  %35 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %4, align 8
  %36 = call i32 @gmux_index_wait_ready(%struct.apple_gmux_data* %35)
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 255
  %39 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %4, align 8
  %40 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @GMUX_PORT_WRITE, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @outb(i32 %38, i64 %43)
  %45 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %4, align 8
  %46 = call i32 @gmux_index_wait_complete(%struct.apple_gmux_data* %45)
  %47 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %4, align 8
  %48 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @gmux_index_wait_ready(%struct.apple_gmux_data*) #1

declare dso_local i32 @gmux_index_wait_complete(%struct.apple_gmux_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
