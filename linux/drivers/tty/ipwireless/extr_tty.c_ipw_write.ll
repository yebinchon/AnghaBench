; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_tty.c_ipw_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_tty.c_ipw_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.ipw_tty* }
%struct.ipw_tty = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPWIRELESS_TX_QUEUE_SIZE = common dso_local global i32 0, align 4
@IPW_CHANNEL_RAS = common dso_local global i32 0, align 4
@ipw_write_packet_sent_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @ipw_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipw_tty*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 0
  %13 = load %struct.ipw_tty*, %struct.ipw_tty** %12, align 8
  store %struct.ipw_tty* %13, %struct.ipw_tty** %8, align 8
  %14 = load %struct.ipw_tty*, %struct.ipw_tty** %8, align 8
  %15 = icmp ne %struct.ipw_tty* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %82

19:                                               ; preds = %3
  %20 = load %struct.ipw_tty*, %struct.ipw_tty** %8, align 8
  %21 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.ipw_tty*, %struct.ipw_tty** %8, align 8
  %24 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %19
  %29 = load %struct.ipw_tty*, %struct.ipw_tty** %8, align 8
  %30 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %82

34:                                               ; preds = %19
  %35 = load i32, i32* @IPWIRELESS_TX_QUEUE_SIZE, align 4
  %36 = load %struct.ipw_tty*, %struct.ipw_tty** %8, align 8
  %37 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %35, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %42, %34
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %47, %43
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.ipw_tty*, %struct.ipw_tty** %8, align 8
  %54 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  store i32 0, i32* %4, align 4
  br label %82

56:                                               ; preds = %49
  %57 = load %struct.ipw_tty*, %struct.ipw_tty** %8, align 8
  %58 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IPW_CHANNEL_RAS, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @ipw_write_packet_sent_callback, align 4
  %64 = load %struct.ipw_tty*, %struct.ipw_tty** %8, align 8
  %65 = call i32 @ipwireless_send_packet(i32 %59, i32 %60, i8* %61, i32 %62, i32 %63, %struct.ipw_tty* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %72

68:                                               ; preds = %56
  %69 = load %struct.ipw_tty*, %struct.ipw_tty** %8, align 8
  %70 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  store i32 0, i32* %4, align 4
  br label %82

72:                                               ; preds = %56
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.ipw_tty*, %struct.ipw_tty** %8, align 8
  %75 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.ipw_tty*, %struct.ipw_tty** %8, align 8
  %79 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %78, i32 0, i32 1
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %72, %68, %52, %28, %16
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ipwireless_send_packet(i32, i32, i8*, i32, i32, %struct.ipw_tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
