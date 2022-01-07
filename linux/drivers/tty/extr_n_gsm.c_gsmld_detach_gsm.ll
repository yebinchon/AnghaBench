; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsmld_detach_gsm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsmld_detach_gsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.gsm_mux = type { %struct.tty_struct* }

@NUM_DLCI = common dso_local global i32 0, align 4
@gsm_tty_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.gsm_mux*)* @gsmld_detach_gsm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsmld_detach_gsm(%struct.tty_struct* %0, %struct.gsm_mux* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.gsm_mux*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.gsm_mux* %1, %struct.gsm_mux** %4, align 8
  %7 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %8 = call i32 @mux_num_to_base(%struct.gsm_mux* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %10 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %11 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %10, i32 0, i32 0
  %12 = load %struct.tty_struct*, %struct.tty_struct** %11, align 8
  %13 = icmp ne %struct.tty_struct* %9, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  store i32 1, i32* %6, align 4
  br label %16

16:                                               ; preds = %26, %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @NUM_DLCI, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load i32, i32* @gsm_tty_driver, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add i32 %22, %23
  %25 = call i32 @tty_unregister_device(i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %16

29:                                               ; preds = %16
  %30 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %31 = call i32 @gsm_cleanup_mux(%struct.gsm_mux* %30)
  %32 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %33 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %32, i32 0, i32 0
  %34 = load %struct.tty_struct*, %struct.tty_struct** %33, align 8
  %35 = call i32 @tty_kref_put(%struct.tty_struct* %34)
  %36 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %37 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %36, i32 0, i32 0
  store %struct.tty_struct* null, %struct.tty_struct** %37, align 8
  ret void
}

declare dso_local i32 @mux_num_to_base(%struct.gsm_mux*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @tty_unregister_device(i32, i32) #1

declare dso_local i32 @gsm_cleanup_mux(%struct.gsm_mux*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
