; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_dlci_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_dlci_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_dlci = type { i32, %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.tty_struct = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%d bytes for tty\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsm_dlci*, i32*, i32)* @gsm_dlci_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsm_dlci_data(%struct.gsm_dlci* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.gsm_dlci*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tty_port*, align 8
  %8 = alloca %struct.tty_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gsm_dlci* %0, %struct.gsm_dlci** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.gsm_dlci*, %struct.gsm_dlci** %4, align 8
  %12 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %11, i32 0, i32 1
  store %struct.tty_port* %12, %struct.tty_port** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* @debug, align 4
  %15 = and i32 %14, 16
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %17, %3
  %21 = load %struct.gsm_dlci*, %struct.gsm_dlci** %4, align 8
  %22 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %55 [
    i32 4, label %24
    i32 3, label %25
    i32 2, label %26
    i32 1, label %54
  ]

24:                                               ; preds = %20
  br label %62

25:                                               ; preds = %20
  br label %62

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %39, %26
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %5, align 8
  %30 = load i32, i32* %28, align 4
  %31 = call i32 @gsm_read_ea(i32* %9, i32 %30)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %62

39:                                               ; preds = %33
  br label %27

40:                                               ; preds = %27
  %41 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %42 = call %struct.tty_struct* @tty_port_tty_get(%struct.tty_port* %41)
  store %struct.tty_struct* %42, %struct.tty_struct** %8, align 8
  %43 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %44 = icmp ne %struct.tty_struct* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %47 = load %struct.gsm_dlci*, %struct.gsm_dlci** %4, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @gsm_process_modem(%struct.tty_struct* %46, %struct.gsm_dlci* %47, i32 %48, i32 %49)
  %51 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %52 = call i32 @tty_kref_put(%struct.tty_struct* %51)
  br label %53

53:                                               ; preds = %45, %40
  br label %54

54:                                               ; preds = %20, %53
  br label %55

55:                                               ; preds = %20, %54
  %56 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @tty_insert_flip_string(%struct.tty_port* %56, i32* %57, i32 %58)
  %60 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %61 = call i32 @tty_flip_buffer_push(%struct.tty_port* %60)
  br label %62

62:                                               ; preds = %38, %55, %25, %24
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @gsm_read_ea(i32*, i32) #1

declare dso_local %struct.tty_struct* @tty_port_tty_get(%struct.tty_port*) #1

declare dso_local i32 @gsm_process_modem(%struct.tty_struct*, %struct.gsm_dlci*, i32, i32) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @tty_insert_flip_string(%struct.tty_port*, i32*, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
