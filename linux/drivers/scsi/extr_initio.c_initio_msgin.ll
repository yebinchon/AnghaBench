; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_msgin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_msgin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i64, i64, %struct.target_control* }
%struct.target_control = type { i32 }

@TSC_FLUSH_FIFO = common dso_local global i32 0, align 4
@TUL_SCtrl0 = common dso_local global i64 0, align 8
@TUL_SCnt0 = common dso_local global i64 0, align 8
@TSC_XF_FIFO_IN = common dso_local global i32 0, align 4
@TUL_SCmd = common dso_local global i64 0, align 8
@TUL_SFifo = common dso_local global i64 0, align 8
@TSC_MSG_ACCEPT = common dso_local global i32 0, align 4
@TUL_SSignal = common dso_local global i64 0, align 8
@TSC_SET_ACK = common dso_local global i32 0, align 4
@TCF_SYNC_DONE = common dso_local global i32 0, align 4
@TCF_NO_SYNC_NEGO = common dso_local global i32 0, align 4
@TSC_SET_ATN = common dso_local global i32 0, align 4
@MSG_IN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.initio_host*)* @initio_msgin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initio_msgin(%struct.initio_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.initio_host*, align 8
  %4 = alloca %struct.target_control*, align 8
  store %struct.initio_host* %0, %struct.initio_host** %3, align 8
  br label %5

5:                                                ; preds = %135, %1
  %6 = load i32, i32* @TSC_FLUSH_FIFO, align 4
  %7 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %8 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @TUL_SCtrl0, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @outb(i32 %6, i64 %11)
  %13 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %14 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TUL_SCnt0, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @outl(i32 1, i64 %17)
  %19 = load i32, i32* @TSC_XF_FIFO_IN, align 4
  %20 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %21 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TUL_SCmd, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @outb(i32 %19, i64 %24)
  %26 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %27 = call i32 @wait_tulip(%struct.initio_host* %26)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store i32 -1, i32* %2, align 4
  br label %136

30:                                               ; preds = %5
  %31 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %32 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TUL_SFifo, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @inb(i64 %35)
  switch i32 %36, label %121 [
    i32 134, label %37
    i32 128, label %47
    i32 129, label %47
    i32 131, label %47
    i32 130, label %50
    i32 133, label %98
    i32 132, label %101
    i32 135, label %104
  ]

37:                                               ; preds = %30
  %38 = load i32, i32* @TSC_MSG_ACCEPT, align 4
  %39 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %40 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TUL_SCmd, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @outb(i32 %38, i64 %43)
  %45 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %46 = call i32 @initio_wait_disc(%struct.initio_host* %45)
  store i32 %46, i32* %2, align 4
  br label %136

47:                                               ; preds = %30, %30, %30
  %48 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %49 = call i32 @initio_msgin_accept(%struct.initio_host* %48)
  br label %124

50:                                               ; preds = %30
  %51 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %52 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TUL_SSignal, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @inb(i64 %55)
  %57 = load i32, i32* @TSC_SET_ACK, align 4
  %58 = or i32 %57, 7
  %59 = and i32 %56, %58
  %60 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %61 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TUL_SSignal, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @outb(i32 %59, i64 %64)
  %66 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %67 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %66, i32 0, i32 2
  %68 = load %struct.target_control*, %struct.target_control** %67, align 8
  store %struct.target_control* %68, %struct.target_control** %4, align 8
  %69 = load %struct.target_control*, %struct.target_control** %4, align 8
  %70 = getelementptr inbounds %struct.target_control, %struct.target_control* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @TCF_SYNC_DONE, align 4
  %73 = load i32, i32* @TCF_NO_SYNC_NEGO, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %50
  %78 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %79 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TUL_SSignal, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @inb(i64 %82)
  %84 = load i32, i32* @TSC_SET_ACK, align 4
  %85 = or i32 %84, 7
  %86 = and i32 %83, %85
  %87 = load i32, i32* @TSC_SET_ATN, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %90 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @TUL_SSignal, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @outb(i32 %88, i64 %93)
  br label %95

95:                                               ; preds = %77, %50
  %96 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %97 = call i32 @initio_msgin_accept(%struct.initio_host* %96)
  br label %124

98:                                               ; preds = %30
  %99 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %100 = call i32 @initio_msgin_extend(%struct.initio_host* %99)
  br label %124

101:                                              ; preds = %30
  %102 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %103 = call i32 @initio_msgin_accept(%struct.initio_host* %102)
  br label %124

104:                                              ; preds = %30
  %105 = load i32, i32* @TSC_FLUSH_FIFO, align 4
  %106 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %107 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @TUL_SCtrl0, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @outb(i32 %105, i64 %110)
  %112 = load i32, i32* @TSC_MSG_ACCEPT, align 4
  %113 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %114 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @TUL_SCmd, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @outb(i32 %112, i64 %117)
  %119 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %120 = call i32 @initio_wait_done_disc(%struct.initio_host* %119)
  store i32 %120, i32* %2, align 4
  br label %136

121:                                              ; preds = %30
  %122 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %123 = call i32 @initio_msgout_reject(%struct.initio_host* %122)
  br label %124

124:                                              ; preds = %121, %101, %98, %95, %47
  %125 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %126 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @MSG_IN, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %124
  %131 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %132 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %2, align 4
  br label %136

135:                                              ; preds = %124
  br label %5

136:                                              ; preds = %130, %104, %37, %29
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @wait_tulip(%struct.initio_host*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @initio_wait_disc(%struct.initio_host*) #1

declare dso_local i32 @initio_msgin_accept(%struct.initio_host*) #1

declare dso_local i32 @initio_msgin_extend(%struct.initio_host*) #1

declare dso_local i32 @initio_wait_done_disc(%struct.initio_host*) #1

declare dso_local i32 @initio_msgout_reject(%struct.initio_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
