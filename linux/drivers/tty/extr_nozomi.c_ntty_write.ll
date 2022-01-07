; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_ntty_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_ntty_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.port* }
%struct.port = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.nozomi = type { i32, %struct.TYPE_4__*, %struct.port* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PORT_MDM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Enable interrupt\00", align 1
@MAX_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"CTS not active on modem port?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @ntty_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntty_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nozomi*, align 8
  %10 = alloca %struct.port*, align 8
  %11 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %15 = call %struct.nozomi* @get_dc_by_tty(%struct.tty_struct* %14)
  store %struct.nozomi* %15, %struct.nozomi** %9, align 8
  %16 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %17 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %16, i32 0, i32 1
  %18 = load %struct.port*, %struct.port** %17, align 8
  store %struct.port* %18, %struct.port** %10, align 8
  %19 = load %struct.nozomi*, %struct.nozomi** %9, align 8
  %20 = icmp ne %struct.nozomi* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.port*, %struct.port** %10, align 8
  %23 = icmp ne %struct.port* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %3
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %80

27:                                               ; preds = %21
  %28 = load %struct.port*, %struct.port** %10, align 8
  %29 = getelementptr inbounds %struct.port, %struct.port* %28, i32 0, i32 1
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @kfifo_in(i32* %29, i8* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.nozomi*, %struct.nozomi** %9, align 8
  %34 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %33, i32 0, i32 0
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.port*, %struct.port** %10, align 8
  %38 = load %struct.nozomi*, %struct.nozomi** %9, align 8
  %39 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %38, i32 0, i32 2
  %40 = load %struct.port*, %struct.port** %39, align 8
  %41 = load i64, i64* @PORT_MDM, align 8
  %42 = getelementptr inbounds %struct.port, %struct.port* %40, i64 %41
  %43 = icmp eq %struct.port* %37, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %27
  %45 = load %struct.port*, %struct.port** %10, align 8
  %46 = getelementptr inbounds %struct.port, %struct.port* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = call i32 @DBG4(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %53 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MAX_PORT, align 4
  %56 = srem i32 %54, %55
  %57 = load %struct.nozomi*, %struct.nozomi** %9, align 8
  %58 = call i32 @enable_transmit_ul(i32 %56, %struct.nozomi* %57)
  br label %65

59:                                               ; preds = %44
  %60 = load %struct.nozomi*, %struct.nozomi** %9, align 8
  %61 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %59, %50
  br label %74

66:                                               ; preds = %27
  %67 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %68 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @MAX_PORT, align 4
  %71 = srem i32 %69, %70
  %72 = load %struct.nozomi*, %struct.nozomi** %9, align 8
  %73 = call i32 @enable_transmit_ul(i32 %71, %struct.nozomi* %72)
  br label %74

74:                                               ; preds = %66, %65
  %75 = load %struct.nozomi*, %struct.nozomi** %9, align 8
  %76 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %75, i32 0, i32 0
  %77 = load i64, i64* %11, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %74, %24
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.nozomi* @get_dc_by_tty(%struct.tty_struct*) #1

declare dso_local i32 @kfifo_in(i32*, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DBG4(i8*) #1

declare dso_local i32 @enable_transmit_ul(i32, %struct.nozomi*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
