; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_reopen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_reopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.TYPE_2__, i32, i32, %struct.tty_driver* }
%struct.TYPE_2__ = type { i32 }
%struct.tty_driver = type { i64, i64 }
%struct.tty_ldisc = type { i32 }

@TTY_DRIVER_TYPE_PTY = common dso_local global i64 0, align 8
@PTY_TYPE_MASTER = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TTY_EXCLUSIVE = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @tty_reopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_reopen(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.tty_driver*, align 8
  %5 = alloca %struct.tty_ldisc*, align 8
  %6 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 4
  %9 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  store %struct.tty_driver* %9, %struct.tty_driver** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %11 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TTY_DRIVER_TYPE_PTY, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %17 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PTY_TYPE_MASTER, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %87

24:                                               ; preds = %15, %1
  %25 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %26 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %87

32:                                               ; preds = %24
  %33 = load i32, i32* @TTY_EXCLUSIVE, align 4
  %34 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %35 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %34, i32 0, i32 3
  %36 = call i64 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %40 = call i32 @capable(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %87

45:                                               ; preds = %38, %32
  %46 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %47 = call %struct.tty_ldisc* @tty_ldisc_ref_wait(%struct.tty_struct* %46)
  store %struct.tty_ldisc* %47, %struct.tty_ldisc** %5, align 8
  %48 = load %struct.tty_ldisc*, %struct.tty_ldisc** %5, align 8
  %49 = icmp ne %struct.tty_ldisc* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.tty_ldisc*, %struct.tty_ldisc** %5, align 8
  %52 = call i32 @tty_ldisc_deref(%struct.tty_ldisc* %51)
  br label %77

53:                                               ; preds = %45
  %54 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %55 = load i32, i32* @HZ, align 4
  %56 = mul nsw i32 5, %55
  %57 = call i32 @tty_ldisc_lock(%struct.tty_struct* %54, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %87

62:                                               ; preds = %53
  %63 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %64 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %62
  %68 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %69 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %70 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @tty_ldisc_reinit(%struct.tty_struct* %68, i32 %72)
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %67, %62
  %75 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %76 = call i32 @tty_ldisc_unlock(%struct.tty_struct* %75)
  br label %77

77:                                               ; preds = %74, %50
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %82 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %80, %77
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %85, %60, %42, %29, %21
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.tty_ldisc* @tty_ldisc_ref_wait(%struct.tty_struct*) #1

declare dso_local i32 @tty_ldisc_deref(%struct.tty_ldisc*) #1

declare dso_local i32 @tty_ldisc_lock(%struct.tty_struct*, i32) #1

declare dso_local i32 @tty_ldisc_reinit(%struct.tty_struct*, i32) #1

declare dso_local i32 @tty_ldisc_unlock(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
