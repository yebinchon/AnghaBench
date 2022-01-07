; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_isicom.c_isicom_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_isicom.c_isicom_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64, %struct.TYPE_3__, i32, %struct.isi_port* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.isi_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ktermios = type { i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"isicom_set_termios\00", align 1
@CRTSCTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.ktermios*)* @isicom_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isicom_set_termios(%struct.tty_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.isi_port*, align 8
  %6 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 3
  %9 = load %struct.isi_port*, %struct.isi_port** %8, align 8
  store %struct.isi_port* %9, %struct.isi_port** %5, align 8
  %10 = load %struct.isi_port*, %struct.isi_port** %5, align 8
  %11 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @isicom_paranoia_check(%struct.isi_port* %10, i32 %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %66

17:                                               ; preds = %2
  %18 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %19 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %23 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %17
  %27 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %28 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %32 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %66

36:                                               ; preds = %26, %17
  %37 = load %struct.isi_port*, %struct.isi_port** %5, align 8
  %38 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %44 = call i32 @isicom_config_port(%struct.tty_struct* %43)
  %45 = load %struct.isi_port*, %struct.isi_port** %5, align 8
  %46 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %52 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @CRTSCTS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %36
  %58 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %59 = call i32 @C_CRTSCTS(%struct.tty_struct* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %63 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %65 = call i32 @isicom_start(%struct.tty_struct* %64)
  br label %66

66:                                               ; preds = %16, %35, %61, %57, %36
  ret void
}

declare dso_local i64 @isicom_paranoia_check(%struct.isi_port*, i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @isicom_config_port(%struct.tty_struct*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @C_CRTSCTS(%struct.tty_struct*) #1

declare dso_local i32 @isicom_start(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
