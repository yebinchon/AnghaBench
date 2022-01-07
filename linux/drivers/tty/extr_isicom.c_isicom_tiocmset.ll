; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_isicom.c_isicom_tiocmset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_isicom.c_isicom_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.isi_port* }
%struct.isi_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"isicom_ioctl\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32, i32)* @isicom_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isicom_tiocmset(%struct.tty_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.isi_port*, align 8
  %9 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 1
  %12 = load %struct.isi_port*, %struct.isi_port** %11, align 8
  store %struct.isi_port* %12, %struct.isi_port** %8, align 8
  %13 = load %struct.isi_port*, %struct.isi_port** %8, align 8
  %14 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @isicom_paranoia_check(%struct.isi_port* %13, i32 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %67

22:                                               ; preds = %3
  %23 = load %struct.isi_port*, %struct.isi_port** %8, align 8
  %24 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @TIOCM_RTS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load %struct.isi_port*, %struct.isi_port** %8, align 8
  %35 = call i32 @raise_rts(%struct.isi_port* %34)
  br label %36

36:                                               ; preds = %33, %22
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @TIOCM_DTR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.isi_port*, %struct.isi_port** %8, align 8
  %43 = call i32 @raise_dtr(%struct.isi_port* %42)
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @TIOCM_RTS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.isi_port*, %struct.isi_port** %8, align 8
  %51 = call i32 @drop_rts(%struct.isi_port* %50)
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @TIOCM_DTR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.isi_port*, %struct.isi_port** %8, align 8
  %59 = call i32 @drop_dtr(%struct.isi_port* %58)
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct.isi_port*, %struct.isi_port** %8, align 8
  %62 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %60, %19
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i64 @isicom_paranoia_check(%struct.isi_port*, i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raise_rts(%struct.isi_port*) #1

declare dso_local i32 @raise_dtr(%struct.isi_port*) #1

declare dso_local i32 @drop_rts(%struct.isi_port*) #1

declare dso_local i32 @drop_dtr(%struct.isi_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
