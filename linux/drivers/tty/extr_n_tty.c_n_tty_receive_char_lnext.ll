; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_receive_char_lnext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_receive_char_lnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.n_tty_data* }
%struct.n_tty_data = type { i64 }

@TTY_NORMAL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8, i8)* @n_tty_receive_char_lnext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @n_tty_receive_char_lnext(%struct.tty_struct* %0, i8 zeroext %1, i8 signext %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.n_tty_data*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load %struct.n_tty_data*, %struct.n_tty_data** %9, align 8
  store %struct.n_tty_data* %10, %struct.n_tty_data** %7, align 8
  %11 = load %struct.n_tty_data*, %struct.n_tty_data** %7, align 8
  %12 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load i8, i8* %6, align 1
  %14 = sext i8 %13 to i32
  %15 = load i8, i8* @TTY_NORMAL, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %14, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %3
  %22 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %23 = call i64 @I_ISTRIP(%struct.tty_struct* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i8, i8* %5, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 127
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %5, align 1
  br label %30

30:                                               ; preds = %25, %21
  %31 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %32 = call i64 @I_IUCLC(%struct.tty_struct* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %36 = call i64 @L_IEXTEN(%struct.tty_struct* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i8, i8* %5, align 1
  %40 = call zeroext i8 @tolower(i8 zeroext %39)
  store i8 %40, i8* %5, align 1
  br label %41

41:                                               ; preds = %38, %34, %30
  %42 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %43 = load i8, i8* %5, align 1
  %44 = call i32 @n_tty_receive_char(%struct.tty_struct* %42, i8 zeroext %43)
  br label %50

45:                                               ; preds = %3
  %46 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %47 = load i8, i8* %5, align 1
  %48 = load i8, i8* %6, align 1
  %49 = call i32 @n_tty_receive_char_flagged(%struct.tty_struct* %46, i8 zeroext %47, i8 signext %48)
  br label %50

50:                                               ; preds = %45, %41
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @I_ISTRIP(%struct.tty_struct*) #1

declare dso_local i64 @I_IUCLC(%struct.tty_struct*) #1

declare dso_local i64 @L_IEXTEN(%struct.tty_struct*) #1

declare dso_local zeroext i8 @tolower(i8 zeroext) #1

declare dso_local i32 @n_tty_receive_char(%struct.tty_struct*, i8 zeroext) #1

declare dso_local i32 @n_tty_receive_char_flagged(%struct.tty_struct*, i8 zeroext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
