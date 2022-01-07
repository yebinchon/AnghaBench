; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_receive_parity_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_receive_parity_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.n_tty_data* }
%struct.n_tty_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8)* @n_tty_receive_parity_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @n_tty_receive_parity_error(%struct.tty_struct* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.n_tty_data*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = load %struct.n_tty_data*, %struct.n_tty_data** %7, align 8
  store %struct.n_tty_data* %8, %struct.n_tty_data** %5, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %10 = call i64 @I_INPCK(%struct.tty_struct* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %2
  %13 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %14 = call i64 @I_IGNPAR(%struct.tty_struct* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %37

17:                                               ; preds = %12
  %18 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %19 = call i64 @I_PARMRK(%struct.tty_struct* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %23 = call i32 @put_tty_queue(i8 zeroext -1, %struct.n_tty_data* %22)
  %24 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %25 = call i32 @put_tty_queue(i8 zeroext 0, %struct.n_tty_data* %24)
  %26 = load i8, i8* %4, align 1
  %27 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %28 = call i32 @put_tty_queue(i8 zeroext %26, %struct.n_tty_data* %27)
  br label %32

29:                                               ; preds = %17
  %30 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %31 = call i32 @put_tty_queue(i8 zeroext 0, %struct.n_tty_data* %30)
  br label %32

32:                                               ; preds = %29, %21
  br label %37

33:                                               ; preds = %2
  %34 = load i8, i8* %4, align 1
  %35 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %36 = call i32 @put_tty_queue(i8 zeroext %34, %struct.n_tty_data* %35)
  br label %37

37:                                               ; preds = %16, %33, %32
  ret void
}

declare dso_local i64 @I_INPCK(%struct.tty_struct*) #1

declare dso_local i64 @I_IGNPAR(%struct.tty_struct*) #1

declare dso_local i64 @I_PARMRK(%struct.tty_struct*) #1

declare dso_local i32 @put_tty_queue(i8 zeroext, %struct.n_tty_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
