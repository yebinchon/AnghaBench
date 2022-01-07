; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_get_outbound_buffer_frontier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_get_outbound_buffer_frontier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@QDIO_IQDIO_QFMT = common dso_local global i64 0, align 8
@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"out empty:%1d %02x\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"out primed:%1d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qdio_q*, i32)* @get_outbound_buffer_frontier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_outbound_buffer_frontier(%struct.qdio_q* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qdio_q*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.qdio_q* %0, %struct.qdio_q** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 0, i8* %6, align 1
  %8 = call i32 (...) @get_tod_clock_fast()
  %9 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %10 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %9, i32 0, i32 5
  store i32 %8, i32* %10, align 4
  %11 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %12 = call i64 @need_siga_sync(%struct.qdio_q* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %2
  %15 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %16 = call i64 @queue_type(%struct.qdio_q* %15)
  %17 = load i64, i64* @QDIO_IQDIO_QFMT, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %21 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %20, i32 0, i32 1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = call i32 @pci_out_supported(%struct.TYPE_9__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %19, %14
  %26 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %27 = call i64 @queue_type(%struct.qdio_q* %26)
  %28 = load i64, i64* @QDIO_IQDIO_QFMT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %32 = call i64 @multicast_outbound(%struct.qdio_q* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %19
  %35 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %36 = call i32 @qdio_siga_sync_q(%struct.qdio_q* %35)
  br label %37

37:                                               ; preds = %34, %30, %25
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %40 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %39, i32 0, i32 3
  %41 = call i32 @atomic_read(i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %133

45:                                               ; preds = %38
  %46 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %50 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @get_buf_states(%struct.qdio_q* %46, i32 %47, i8* %6, i32 %48, i32 0, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %133

58:                                               ; preds = %45
  %59 = load i8, i8* %6, align 1
  %60 = zext i8 %59 to i32
  switch i32 %60, label %131 [
    i32 132, label %61
    i32 128, label %61
    i32 131, label %87
    i32 133, label %108
    i32 129, label %130
    i32 130, label %130
  ]

61:                                               ; preds = %58, %58
  %62 = load i32, i32* @DBF_INFO, align 4
  %63 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %64 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %63, i32 0, i32 1
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %67 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 (i32, %struct.TYPE_9__*, i8*, i32, ...) @DBF_DEV_EVENT(i32 %62, %struct.TYPE_9__* %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %73 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %72, i32 0, i32 3
  %74 = call i32 @atomic_sub(i32 %71, i32* %73)
  %75 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %76 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %75, i32 0, i32 1
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %61
  %82 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @account_sbals(%struct.qdio_q* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %61
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %3, align 4
  br label %133

87:                                               ; preds = %58
  %88 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @process_buffer_error(%struct.qdio_q* %88, i32 %89, i32 %90)
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %94 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %93, i32 0, i32 3
  %95 = call i32 @atomic_sub(i32 %92, i32* %94)
  %96 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %97 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %96, i32 0, i32 1
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %87
  %103 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @account_sbals_error(%struct.qdio_q* %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %87
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %3, align 4
  br label %133

108:                                              ; preds = %58
  %109 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %110 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %109, i32 0, i32 1
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %108
  %116 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %117 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %115, %108
  %122 = load i32, i32* @DBF_INFO, align 4
  %123 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %124 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %123, i32 0, i32 1
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %127 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i32, %struct.TYPE_9__*, i8*, i32, ...) @DBF_DEV_EVENT(i32 %122, %struct.TYPE_9__* %125, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  store i32 0, i32* %3, align 4
  br label %133

130:                                              ; preds = %58, %58
  store i32 0, i32* %3, align 4
  br label %133

131:                                              ; preds = %58
  %132 = call i32 @WARN_ON_ONCE(i32 1)
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %131, %130, %121, %106, %85, %57, %44
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @get_tod_clock_fast(...) #1

declare dso_local i64 @need_siga_sync(%struct.qdio_q*) #1

declare dso_local i64 @queue_type(%struct.qdio_q*) #1

declare dso_local i32 @pci_out_supported(%struct.TYPE_9__*) #1

declare dso_local i64 @multicast_outbound(%struct.qdio_q*) #1

declare dso_local i32 @qdio_siga_sync_q(%struct.qdio_q*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @get_buf_states(%struct.qdio_q*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.TYPE_9__*, i8*, i32, ...) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @account_sbals(%struct.qdio_q*, i32) #1

declare dso_local i32 @process_buffer_error(%struct.qdio_q*, i32, i32) #1

declare dso_local i32 @account_sbals_error(%struct.qdio_q*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
