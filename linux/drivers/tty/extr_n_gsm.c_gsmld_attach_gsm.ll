; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsmld_attach_gsm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsmld_attach_gsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.gsm_mux = type { i32, i32 }

@gsmld_output = common dso_local global i32 0, align 4
@NUM_DLCI = common dso_local global i32 0, align 4
@gsm_tty_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.gsm_mux*)* @gsmld_attach_gsm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsmld_attach_gsm(%struct.tty_struct* %0, %struct.gsm_mux* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.gsm_mux*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.gsm_mux* %1, %struct.gsm_mux** %4, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = call i32 @tty_kref_get(%struct.tty_struct* %8)
  %10 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %11 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @gsmld_output, align 4
  %13 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %14 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %16 = call i32 @gsm_activate_mux(%struct.gsm_mux* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %21 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @tty_kref_put(i32 %22)
  br label %41

24:                                               ; preds = %2
  %25 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %26 = call i32 @mux_num_to_base(%struct.gsm_mux* %25)
  store i32 %26, i32* %5, align 4
  store i32 1, i32* %7, align 4
  br label %27

27:                                               ; preds = %37, %24
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @NUM_DLCI, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i32, i32* @gsm_tty_driver, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %7, align 4
  %35 = add i32 %33, %34
  %36 = call i32 @tty_register_device(i32 %32, i32 %35, i32* null)
  br label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %27

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %19
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @tty_kref_get(%struct.tty_struct*) #1

declare dso_local i32 @gsm_activate_mux(%struct.gsm_mux*) #1

declare dso_local i32 @tty_kref_put(i32) #1

declare dso_local i32 @mux_num_to_base(%struct.gsm_mux*) #1

declare dso_local i32 @tty_register_device(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
