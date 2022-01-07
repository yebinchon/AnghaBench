; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_main_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_main_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_common = type { i64, i32, i32, %struct.fsg_lun**, i32, i32*, i32 }
%struct.fsg_lun = type { i32 }

@SIGINT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@FSG_STATE_TERMINATED = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @fsg_main_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsg_main_thread(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fsg_common*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsg_lun*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.fsg_common*
  store %struct.fsg_common* %8, %struct.fsg_common** %4, align 8
  %9 = load i32, i32* @SIGINT, align 4
  %10 = call i32 @allow_signal(i32 %9)
  %11 = load i32, i32* @SIGTERM, align 4
  %12 = call i32 @allow_signal(i32 %11)
  %13 = load i32, i32* @SIGKILL, align 4
  %14 = call i32 @allow_signal(i32 %13)
  %15 = load i32, i32* @SIGUSR1, align 4
  %16 = call i32 @allow_signal(i32 %15)
  %17 = call i32 (...) @set_freezable()
  br label %18

18:                                               ; preds = %70, %69, %60, %51, %40, %32, %1
  %19 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %20 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FSG_STATE_TERMINATED, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %73

24:                                               ; preds = %18
  %25 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %26 = call i64 @exception_in_progress(%struct.fsg_common* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @current, align 4
  %30 = call i64 @signal_pending(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %24
  %33 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %34 = call i32 @handle_exception(%struct.fsg_common* %33)
  br label %18

35:                                               ; preds = %28
  %36 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %37 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %42 = call i32 @sleep_thread(%struct.fsg_common* %41, i32 1, i32* null)
  br label %18

43:                                               ; preds = %35
  %44 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %45 = call i64 @get_next_command(%struct.fsg_common* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %49 = call i64 @exception_in_progress(%struct.fsg_common* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %43
  br label %18

52:                                               ; preds = %47
  %53 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %54 = call i64 @do_scsi_command(%struct.fsg_common* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %58 = call i64 @exception_in_progress(%struct.fsg_common* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %52
  br label %18

61:                                               ; preds = %56
  %62 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %63 = call i64 @finish_reply(%struct.fsg_common* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %67 = call i64 @exception_in_progress(%struct.fsg_common* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %61
  br label %18

70:                                               ; preds = %65
  %71 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %72 = call i32 @send_status(%struct.fsg_common* %71)
  br label %18

73:                                               ; preds = %18
  %74 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %75 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %74, i32 0, i32 4
  %76 = call i32 @spin_lock_irq(i32* %75)
  %77 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %78 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %77, i32 0, i32 5
  store i32* null, i32** %78, align 8
  %79 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %80 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %79, i32 0, i32 4
  %81 = call i32 @spin_unlock_irq(i32* %80)
  %82 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %83 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %82, i32 0, i32 2
  %84 = call i32 @down_write(i32* %83)
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %110, %73
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %88 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %87, i32 0, i32 3
  %89 = load %struct.fsg_lun**, %struct.fsg_lun*** %88, align 8
  %90 = call i32 @ARRAY_SIZE(%struct.fsg_lun** %89)
  %91 = icmp slt i32 %86, %90
  br i1 %91, label %92, label %113

92:                                               ; preds = %85
  %93 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %94 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %93, i32 0, i32 3
  %95 = load %struct.fsg_lun**, %struct.fsg_lun*** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.fsg_lun*, %struct.fsg_lun** %95, i64 %97
  %99 = load %struct.fsg_lun*, %struct.fsg_lun** %98, align 8
  store %struct.fsg_lun* %99, %struct.fsg_lun** %6, align 8
  %100 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %101 = icmp ne %struct.fsg_lun* %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %92
  %103 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %104 = call i64 @fsg_lun_is_open(%struct.fsg_lun* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %108 = call i32 @fsg_lun_close(%struct.fsg_lun* %107)
  br label %109

109:                                              ; preds = %106, %102, %92
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %85

113:                                              ; preds = %85
  %114 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %115 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %114, i32 0, i32 2
  %116 = call i32 @up_write(i32* %115)
  %117 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %118 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %117, i32 0, i32 1
  %119 = call i32 @complete_and_exit(i32* %118, i32 0)
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @allow_signal(i32) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i64 @exception_in_progress(%struct.fsg_common*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @handle_exception(%struct.fsg_common*) #1

declare dso_local i32 @sleep_thread(%struct.fsg_common*, i32, i32*) #1

declare dso_local i64 @get_next_command(%struct.fsg_common*) #1

declare dso_local i64 @do_scsi_command(%struct.fsg_common*) #1

declare dso_local i64 @finish_reply(%struct.fsg_common*) #1

declare dso_local i32 @send_status(%struct.fsg_common*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.fsg_lun**) #1

declare dso_local i64 @fsg_lun_is_open(%struct.fsg_lun*) #1

declare dso_local i32 @fsg_lun_close(%struct.fsg_lun*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @complete_and_exit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
