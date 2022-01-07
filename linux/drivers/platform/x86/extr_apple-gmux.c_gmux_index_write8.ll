; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_apple-gmux.c_gmux_index_write8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_apple-gmux.c_gmux_index_write8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apple_gmux_data = type { i32, i64 }

@GMUX_PORT_VALUE = common dso_local global i64 0, align 8
@GMUX_PORT_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.apple_gmux_data*, i32, i32)* @gmux_index_write8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmux_index_write8(%struct.apple_gmux_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.apple_gmux_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.apple_gmux_data* %0, %struct.apple_gmux_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %4, align 8
  %8 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %4, align 8
  %12 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @GMUX_PORT_VALUE, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @outb(i32 %10, i64 %15)
  %17 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %4, align 8
  %18 = call i32 @gmux_index_wait_ready(%struct.apple_gmux_data* %17)
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 255
  %21 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %4, align 8
  %22 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @GMUX_PORT_WRITE, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outb(i32 %20, i64 %25)
  %27 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %4, align 8
  %28 = call i32 @gmux_index_wait_complete(%struct.apple_gmux_data* %27)
  %29 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %4, align 8
  %30 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
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
