; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_tty.c_gdm_tty_recv_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_tty.c_gdm_tty_recv_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_dev = type { %struct.gdm** }
%struct.gdm = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 (i32, {}*)* }

@RECV_PACKET_PROCESS_COMPLETE = common dso_local global i32 0, align 4
@TO_HOST_PORT_CLOSE = common dso_local global i32 0, align 4
@TO_HOST_BUFFER_REQUEST_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, %struct.tty_dev*, i32)* @gdm_tty_recv_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdm_tty_recv_complete(i8* %0, i32 %1, i32 %2, %struct.tty_dev* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tty_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gdm*, align 8
  %13 = alloca i32 (i8*, i32, i32, %struct.tty_dev*, i32)*, align 8
  %14 = alloca i32 (i8*, i32, i32, %struct.tty_dev*, i32)*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.tty_dev* %3, %struct.tty_dev** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.tty_dev*, %struct.tty_dev** %10, align 8
  %16 = getelementptr inbounds %struct.tty_dev, %struct.tty_dev* %15, i32 0, i32 0
  %17 = load %struct.gdm**, %struct.gdm*** %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.gdm*, %struct.gdm** %17, i64 %19
  %21 = load %struct.gdm*, %struct.gdm** %20, align 8
  store %struct.gdm* %21, %struct.gdm** %12, align 8
  %22 = load %struct.gdm*, %struct.gdm** %12, align 8
  %23 = call i32 @GDM_TTY_READY(%struct.gdm* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @RECV_PACKET_PROCESS_COMPLETE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load %struct.gdm*, %struct.gdm** %12, align 8
  %31 = getelementptr inbounds %struct.gdm, %struct.gdm* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32 (i32, {}*)*, i32 (i32, {}*)** %33, align 8
  %35 = load %struct.gdm*, %struct.gdm** %12, align 8
  %36 = getelementptr inbounds %struct.gdm, %struct.gdm* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 (i8*, i32, i32, %struct.tty_dev*, i32)* @gdm_tty_recv_complete, i32 (i8*, i32, i32, %struct.tty_dev*, i32)** %13, align 8
  %40 = load i32 (i8*, i32, i32, %struct.tty_dev*, i32)*, i32 (i8*, i32, i32, %struct.tty_dev*, i32)** %13, align 8
  %41 = bitcast i32 (i8*, i32, i32, %struct.tty_dev*, i32)* %40 to {}*
  %42 = call i32 %34(i32 %39, {}* %41)
  br label %43

43:                                               ; preds = %29, %25
  %44 = load i32, i32* @TO_HOST_PORT_CLOSE, align 4
  store i32 %44, i32* %6, align 4
  br label %89

45:                                               ; preds = %5
  %46 = load i8*, i8** %7, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %70

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %48
  %52 = load %struct.gdm*, %struct.gdm** %12, align 8
  %53 = getelementptr inbounds %struct.gdm, %struct.gdm* %52, i32 0, i32 1
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @tty_buffer_request_room(i32* %53, i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %51
  %59 = load %struct.gdm*, %struct.gdm** %12, align 8
  %60 = getelementptr inbounds %struct.gdm, %struct.gdm* %59, i32 0, i32 1
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @tty_insert_flip_string(i32* %60, i8* %61, i32 %62)
  %64 = load %struct.gdm*, %struct.gdm** %12, align 8
  %65 = getelementptr inbounds %struct.gdm, %struct.gdm* %64, i32 0, i32 1
  %66 = call i32 @tty_flip_buffer_push(i32* %65)
  br label %69

67:                                               ; preds = %51
  %68 = load i32, i32* @TO_HOST_BUFFER_REQUEST_FAIL, align 4
  store i32 %68, i32* %6, align 4
  br label %89

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %48, %45
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @RECV_PACKET_PROCESS_COMPLETE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %70
  %75 = load %struct.gdm*, %struct.gdm** %12, align 8
  %76 = getelementptr inbounds %struct.gdm, %struct.gdm* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32 (i32, {}*)*, i32 (i32, {}*)** %78, align 8
  %80 = load %struct.gdm*, %struct.gdm** %12, align 8
  %81 = getelementptr inbounds %struct.gdm, %struct.gdm* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 (i8*, i32, i32, %struct.tty_dev*, i32)* @gdm_tty_recv_complete, i32 (i8*, i32, i32, %struct.tty_dev*, i32)** %14, align 8
  %85 = load i32 (i8*, i32, i32, %struct.tty_dev*, i32)*, i32 (i8*, i32, i32, %struct.tty_dev*, i32)** %14, align 8
  %86 = bitcast i32 (i8*, i32, i32, %struct.tty_dev*, i32)* %85 to {}*
  %87 = call i32 %79(i32 %84, {}* %86)
  br label %88

88:                                               ; preds = %74, %70
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %88, %67, %43
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @GDM_TTY_READY(%struct.gdm*) #1

declare dso_local i32 @tty_buffer_request_room(i32*, i32) #1

declare dso_local i32 @tty_insert_flip_string(i32*, i8*, i32) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
