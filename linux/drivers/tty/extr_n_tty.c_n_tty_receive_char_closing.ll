; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_receive_char_closing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_receive_char_closing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8)* @n_tty_receive_char_closing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @n_tty_receive_char_closing(%struct.tty_struct* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i8, align 1
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %6 = call i64 @I_ISTRIP(%struct.tty_struct* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i8, i8* %4, align 1
  %10 = zext i8 %9 to i32
  %11 = and i32 %10, 127
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %4, align 1
  br label %13

13:                                               ; preds = %8, %2
  %14 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %15 = call i64 @I_IUCLC(%struct.tty_struct* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %19 = call i64 @L_IEXTEN(%struct.tty_struct* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i8, i8* %4, align 1
  %23 = call zeroext i8 @tolower(i8 zeroext %22)
  store i8 %23, i8* %4, align 1
  br label %24

24:                                               ; preds = %21, %17, %13
  %25 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %26 = call i64 @I_IXON(%struct.tty_struct* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %87

28:                                               ; preds = %24
  %29 = load i8, i8* %4, align 1
  %30 = zext i8 %29 to i32
  %31 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %32 = call zeroext i8 @STOP_CHAR(%struct.tty_struct* %31)
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %37 = call i32 @stop_tty(%struct.tty_struct* %36)
  br label %86

38:                                               ; preds = %28
  %39 = load i8, i8* %4, align 1
  %40 = zext i8 %39 to i32
  %41 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %42 = call zeroext i8 @START_CHAR(%struct.tty_struct* %41)
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %80, label %45

45:                                               ; preds = %38
  %46 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %47 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %85

50:                                               ; preds = %45
  %51 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %52 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %85, label %55

55:                                               ; preds = %50
  %56 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %57 = call i64 @I_IXANY(%struct.tty_struct* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %55
  %60 = load i8, i8* %4, align 1
  %61 = zext i8 %60 to i32
  %62 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %63 = call zeroext i8 @INTR_CHAR(%struct.tty_struct* %62)
  %64 = zext i8 %63 to i32
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %59
  %67 = load i8, i8* %4, align 1
  %68 = zext i8 %67 to i32
  %69 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %70 = call zeroext i8 @QUIT_CHAR(%struct.tty_struct* %69)
  %71 = zext i8 %70 to i32
  %72 = icmp ne i32 %68, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %66
  %74 = load i8, i8* %4, align 1
  %75 = zext i8 %74 to i32
  %76 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %77 = call zeroext i8 @SUSP_CHAR(%struct.tty_struct* %76)
  %78 = zext i8 %77 to i32
  %79 = icmp ne i32 %75, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %73, %38
  %81 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %82 = call i32 @start_tty(%struct.tty_struct* %81)
  %83 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %84 = call i32 @process_echoes(%struct.tty_struct* %83)
  br label %85

85:                                               ; preds = %80, %73, %66, %59, %55, %50, %45
  br label %86

86:                                               ; preds = %85, %35
  br label %87

87:                                               ; preds = %86, %24
  ret void
}

declare dso_local i64 @I_ISTRIP(%struct.tty_struct*) #1

declare dso_local i64 @I_IUCLC(%struct.tty_struct*) #1

declare dso_local i64 @L_IEXTEN(%struct.tty_struct*) #1

declare dso_local zeroext i8 @tolower(i8 zeroext) #1

declare dso_local i64 @I_IXON(%struct.tty_struct*) #1

declare dso_local zeroext i8 @STOP_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @stop_tty(%struct.tty_struct*) #1

declare dso_local zeroext i8 @START_CHAR(%struct.tty_struct*) #1

declare dso_local i64 @I_IXANY(%struct.tty_struct*) #1

declare dso_local zeroext i8 @INTR_CHAR(%struct.tty_struct*) #1

declare dso_local zeroext i8 @QUIT_CHAR(%struct.tty_struct*) #1

declare dso_local zeroext i8 @SUSP_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @start_tty(%struct.tty_struct*) #1

declare dso_local i32 @process_echoes(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
