; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsmtty_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsmtty_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.gsm_dlci* }
%struct.gsm_dlci = type { i64, i32, i32 }
%struct.file = type { i32 }

@DLCI_CLOSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.file*)* @gsmtty_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsmtty_close(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.gsm_dlci*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = load %struct.gsm_dlci*, %struct.gsm_dlci** %7, align 8
  store %struct.gsm_dlci* %8, %struct.gsm_dlci** %5, align 8
  %9 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %10 = icmp eq %struct.gsm_dlci* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %58

12:                                               ; preds = %2
  %13 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %14 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DLCI_CLOSED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %58

19:                                               ; preds = %12
  %20 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %21 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %20, i32 0, i32 2
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %24 = call i32 @gsm_destroy_network(%struct.gsm_dlci* %23)
  %25 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %26 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %25, i32 0, i32 2
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %29 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %28, i32 0, i32 1
  %30 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %31 = load %struct.file*, %struct.file** %4, align 8
  %32 = call i64 @tty_port_close_start(i32* %29, %struct.tty_struct* %30, %struct.file* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  br label %58

35:                                               ; preds = %19
  %36 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %37 = call i32 @gsm_dlci_begin_close(%struct.gsm_dlci* %36)
  %38 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %39 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %38, i32 0, i32 1
  %40 = call i64 @tty_port_initialized(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %44 = call i64 @C_HUPCL(%struct.tty_struct* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %48 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %47, i32 0, i32 1
  %49 = call i32 @tty_port_lower_dtr_rts(i32* %48)
  br label %50

50:                                               ; preds = %46, %42, %35
  %51 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %52 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %51, i32 0, i32 1
  %53 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %54 = call i32 @tty_port_close_end(i32* %52, %struct.tty_struct* %53)
  %55 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %56 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %55, i32 0, i32 1
  %57 = call i32 @tty_port_tty_set(i32* %56, i32* null)
  br label %58

58:                                               ; preds = %50, %34, %18, %11
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gsm_destroy_network(%struct.gsm_dlci*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @tty_port_close_start(i32*, %struct.tty_struct*, %struct.file*) #1

declare dso_local i32 @gsm_dlci_begin_close(%struct.gsm_dlci*) #1

declare dso_local i64 @tty_port_initialized(i32*) #1

declare dso_local i64 @C_HUPCL(%struct.tty_struct*) #1

declare dso_local i32 @tty_port_lower_dtr_rts(i32*) #1

declare dso_local i32 @tty_port_close_end(i32*, %struct.tty_struct*) #1

declare dso_local i32 @tty_port_tty_set(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
