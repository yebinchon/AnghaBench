; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_start_read_all_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_start_read_all_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }
%struct.var_t = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@cursor_con = common dso_local global i32 0, align 4
@read_all_key = common dso_local global i32 0, align 4
@CURSOR_TIME = common dso_local global i32 0, align 4
@cursor_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @start_read_all_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_read_all_timer(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.var_t*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %7 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* @cursor_con, align 4
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* @read_all_key, align 4
  %10 = load i32, i32* @CURSOR_TIME, align 4
  %11 = call %struct.var_t* @spk_get_var(i32 %10)
  store %struct.var_t* %11, %struct.var_t** %5, align 8
  %12 = load i64, i64* @jiffies, align 8
  %13 = load %struct.var_t*, %struct.var_t** %5, align 8
  %14 = getelementptr inbounds %struct.var_t, %struct.var_t* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @msecs_to_jiffies(i32 %17)
  %19 = add nsw i64 %12, %18
  %20 = call i32 @mod_timer(i32* @cursor_timer, i64 %19)
  ret void
}

declare dso_local %struct.var_t* @spk_get_var(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
