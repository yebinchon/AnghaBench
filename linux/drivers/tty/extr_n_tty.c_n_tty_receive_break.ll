; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_receive_break.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_receive_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.n_tty_data* }
%struct.n_tty_data = type { i32 }

@SIGINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @n_tty_receive_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @n_tty_receive_break(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.n_tty_data*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 0
  %6 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  store %struct.n_tty_data* %6, %struct.n_tty_data** %3, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %8 = call i64 @I_IGNBRK(%struct.tty_struct* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %31

11:                                               ; preds = %1
  %12 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %13 = call i64 @I_BRKINT(%struct.tty_struct* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* @SIGINT, align 4
  %17 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %18 = call i32 @isig(i32 %16, %struct.tty_struct* %17)
  br label %31

19:                                               ; preds = %11
  %20 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %21 = call i64 @I_PARMRK(%struct.tty_struct* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %25 = call i32 @put_tty_queue(i8 signext -1, %struct.n_tty_data* %24)
  %26 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %27 = call i32 @put_tty_queue(i8 signext 0, %struct.n_tty_data* %26)
  br label %28

28:                                               ; preds = %23, %19
  %29 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %30 = call i32 @put_tty_queue(i8 signext 0, %struct.n_tty_data* %29)
  br label %31

31:                                               ; preds = %28, %15, %10
  ret void
}

declare dso_local i64 @I_IGNBRK(%struct.tty_struct*) #1

declare dso_local i64 @I_BRKINT(%struct.tty_struct*) #1

declare dso_local i32 @isig(i32, %struct.tty_struct*) #1

declare dso_local i64 @I_PARMRK(%struct.tty_struct*) #1

declare dso_local i32 @put_tty_queue(i8 signext, %struct.n_tty_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
