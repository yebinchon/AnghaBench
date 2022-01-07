; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ssd1306.c_set_addr_win_64x48.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ssd1306.c_set_addr_win_64x48.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fbtft_par*)* @set_addr_win_64x48 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_addr_win_64x48(%struct.fbtft_par* %0) #0 {
  %2 = alloca %struct.fbtft_par*, align 8
  store %struct.fbtft_par* %0, %struct.fbtft_par** %2, align 8
  %3 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %4 = call i32 @write_reg(%struct.fbtft_par* %3, i32 33)
  %5 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %6 = call i32 @write_reg(%struct.fbtft_par* %5, i32 32)
  %7 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %8 = call i32 @write_reg(%struct.fbtft_par* %7, i32 95)
  %9 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %10 = call i32 @write_reg(%struct.fbtft_par* %9, i32 34)
  %11 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %12 = call i32 @write_reg(%struct.fbtft_par* %11, i32 0)
  %13 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %14 = call i32 @write_reg(%struct.fbtft_par* %13, i32 5)
  ret void
}

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
