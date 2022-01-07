; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_receive_char_inline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_receive_char_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i64, %struct.n_tty_data* }
%struct.n_tty_data = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8)* @n_tty_receive_char_inline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @n_tty_receive_char_inline(%struct.tty_struct* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.n_tty_data*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 2
  %8 = load %struct.n_tty_data*, %struct.n_tty_data** %7, align 8
  store %struct.n_tty_data* %8, %struct.n_tty_data** %5, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %13
  %19 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %20 = call i64 @I_IXON(%struct.tty_struct* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %24 = call i64 @I_IXANY(%struct.tty_struct* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %28 = call i32 @start_tty(%struct.tty_struct* %27)
  %29 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %30 = call i32 @process_echoes(%struct.tty_struct* %29)
  br label %31

31:                                               ; preds = %26, %22, %18, %13, %2
  %32 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %33 = call i64 @L_ECHO(%struct.tty_struct* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %37 = call i32 @finish_erasing(%struct.n_tty_data* %36)
  %38 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %39 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %42 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %47 = call i32 @echo_set_canon_col(%struct.n_tty_data* %46)
  br label %48

48:                                               ; preds = %45, %35
  %49 = load i8, i8* %4, align 1
  %50 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %51 = call i32 @echo_char(i8 zeroext %49, %struct.tty_struct* %50)
  %52 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %53 = call i32 @commit_echoes(%struct.tty_struct* %52)
  br label %54

54:                                               ; preds = %48, %31
  %55 = load i8, i8* %4, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 255
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %60 = call i64 @I_PARMRK(%struct.tty_struct* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i8, i8* %4, align 1
  %64 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %65 = call i32 @put_tty_queue(i8 zeroext %63, %struct.n_tty_data* %64)
  br label %66

66:                                               ; preds = %62, %58, %54
  %67 = load i8, i8* %4, align 1
  %68 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %69 = call i32 @put_tty_queue(i8 zeroext %67, %struct.n_tty_data* %68)
  ret void
}

declare dso_local i64 @I_IXON(%struct.tty_struct*) #1

declare dso_local i64 @I_IXANY(%struct.tty_struct*) #1

declare dso_local i32 @start_tty(%struct.tty_struct*) #1

declare dso_local i32 @process_echoes(%struct.tty_struct*) #1

declare dso_local i64 @L_ECHO(%struct.tty_struct*) #1

declare dso_local i32 @finish_erasing(%struct.n_tty_data*) #1

declare dso_local i32 @echo_set_canon_col(%struct.n_tty_data*) #1

declare dso_local i32 @echo_char(i8 zeroext, %struct.tty_struct*) #1

declare dso_local i32 @commit_echoes(%struct.tty_struct*) #1

declare dso_local i64 @I_PARMRK(%struct.tty_struct*) #1

declare dso_local i32 @put_tty_queue(i8 zeroext, %struct.n_tty_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
