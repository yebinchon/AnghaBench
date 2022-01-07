; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_hdlc.c_n_hdlc_buf_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_hdlc.c_n_hdlc_buf_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.n_hdlc_buf_list = type { i32, i32, i32 }
%struct.n_hdlc_buf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.n_hdlc_buf_list*, %struct.n_hdlc_buf*)* @n_hdlc_buf_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @n_hdlc_buf_put(%struct.n_hdlc_buf_list* %0, %struct.n_hdlc_buf* %1) #0 {
  %3 = alloca %struct.n_hdlc_buf_list*, align 8
  %4 = alloca %struct.n_hdlc_buf*, align 8
  %5 = alloca i64, align 8
  store %struct.n_hdlc_buf_list* %0, %struct.n_hdlc_buf_list** %3, align 8
  store %struct.n_hdlc_buf* %1, %struct.n_hdlc_buf** %4, align 8
  %6 = load %struct.n_hdlc_buf_list*, %struct.n_hdlc_buf_list** %3, align 8
  %7 = getelementptr inbounds %struct.n_hdlc_buf_list, %struct.n_hdlc_buf_list* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.n_hdlc_buf*, %struct.n_hdlc_buf** %4, align 8
  %11 = getelementptr inbounds %struct.n_hdlc_buf, %struct.n_hdlc_buf* %10, i32 0, i32 0
  %12 = load %struct.n_hdlc_buf_list*, %struct.n_hdlc_buf_list** %3, align 8
  %13 = getelementptr inbounds %struct.n_hdlc_buf_list, %struct.n_hdlc_buf_list* %12, i32 0, i32 2
  %14 = call i32 @list_add_tail(i32* %11, i32* %13)
  %15 = load %struct.n_hdlc_buf_list*, %struct.n_hdlc_buf_list** %3, align 8
  %16 = getelementptr inbounds %struct.n_hdlc_buf_list, %struct.n_hdlc_buf_list* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.n_hdlc_buf_list*, %struct.n_hdlc_buf_list** %3, align 8
  %20 = getelementptr inbounds %struct.n_hdlc_buf_list, %struct.n_hdlc_buf_list* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
