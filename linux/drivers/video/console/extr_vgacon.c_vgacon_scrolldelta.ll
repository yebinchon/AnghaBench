; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_vgacon.c_vgacon_scrolldelta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_vgacon.c_vgacon_scrolldelta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }

@vga_rolled_over = common dso_local global i32 0, align 4
@vga_vram_base = common dso_local global i64 0, align 8
@vga_vram_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @vgacon_scrolldelta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vgacon_scrolldelta(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @vga_rolled_over, align 4
  %8 = load i64, i64* @vga_vram_base, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = load i32, i32* @vga_vram_size, align 4
  %11 = call i32 @vc_scrolldelta_helper(%struct.vc_data* %5, i32 %6, i32 %7, i8* %9, i32 %10)
  %12 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %13 = call i32 @vga_set_mem_top(%struct.vc_data* %12)
  ret void
}

declare dso_local i32 @vc_scrolldelta_helper(%struct.vc_data*, i32, i32, i8*, i32) #1

declare dso_local i32 @vga_set_mem_top(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
