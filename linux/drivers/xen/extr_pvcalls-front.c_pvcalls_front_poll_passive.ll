; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_pvcalls_front_poll_passive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_pvcalls_front_poll_passive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.pvcalls_bedata = type { i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.sock_mapping = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.xen_pvcalls_request = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@PVCALLS_FLAG_ACCEPT_INFLIGHT = common dso_local global i32 0, align 4
@PVCALLS_INVALID_ID = common dso_local global i64 0, align 8
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@PVCALLS_FLAG_POLL_RET = common dso_local global i32 0, align 4
@PVCALLS_FLAG_POLL_INFLIGHT = common dso_local global i32 0, align 4
@PVCALLS_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.pvcalls_bedata*, %struct.sock_mapping*, i32*)* @pvcalls_front_poll_passive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvcalls_front_poll_passive(%struct.file* %0, %struct.pvcalls_bedata* %1, %struct.sock_mapping* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.pvcalls_bedata*, align 8
  %8 = alloca %struct.sock_mapping*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.xen_pvcalls_request*, align 8
  %14 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.pvcalls_bedata* %1, %struct.pvcalls_bedata** %7, align 8
  store %struct.sock_mapping* %2, %struct.sock_mapping** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* @PVCALLS_FLAG_ACCEPT_INFLIGHT, align 4
  %16 = load %struct.sock_mapping*, %struct.sock_mapping** %8, align 8
  %17 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = bitcast i32* %18 to i8*
  %20 = call i64 @test_bit(i32 %15, i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %4
  %23 = load %struct.sock_mapping*, %struct.sock_mapping** %8, align 8
  %24 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @READ_ONCE(i32 %26)
  store i64 %27, i64* %14, align 8
  %28 = load i64, i64* %14, align 8
  %29 = load i64, i64* @PVCALLS_INVALID_ID, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %22
  %32 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %7, align 8
  %33 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %32, i32 0, i32 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load i64, i64* %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @READ_ONCE(i32 %38)
  %40 = load i64, i64* %14, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load i32, i32* @EPOLLIN, align 4
  %44 = load i32, i32* @EPOLLRDNORM, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %5, align 4
  br label %134

46:                                               ; preds = %31, %22
  %47 = load %struct.file*, %struct.file** %6, align 8
  %48 = load %struct.sock_mapping*, %struct.sock_mapping** %8, align 8
  %49 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @poll_wait(%struct.file* %47, i32* %50, i32* %51)
  store i32 0, i32* %5, align 4
  br label %134

53:                                               ; preds = %4
  %54 = load i32, i32* @PVCALLS_FLAG_POLL_RET, align 4
  %55 = load %struct.sock_mapping*, %struct.sock_mapping** %8, align 8
  %56 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = bitcast i32* %57 to i8*
  %59 = call i64 @test_and_clear_bit(i32 %54, i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i32, i32* @EPOLLIN, align 4
  %63 = load i32, i32* @EPOLLRDNORM, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %5, align 4
  br label %134

65:                                               ; preds = %53
  %66 = load i32, i32* @PVCALLS_FLAG_POLL_INFLIGHT, align 4
  %67 = load %struct.sock_mapping*, %struct.sock_mapping** %8, align 8
  %68 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = bitcast i32* %69 to i8*
  %71 = call i64 @test_and_set_bit(i32 %66, i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = load %struct.file*, %struct.file** %6, align 8
  %75 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %7, align 8
  %76 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %75, i32 0, i32 0
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @poll_wait(%struct.file* %74, i32* %76, i32* %77)
  store i32 0, i32* %5, align 4
  br label %134

79:                                               ; preds = %65
  %80 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %7, align 8
  %81 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %80, i32 0, i32 2
  %82 = call i32 @spin_lock(i32* %81)
  %83 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %7, align 8
  %84 = call i32 @get_request(%struct.pvcalls_bedata* %83, i32* %11)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %7, align 8
  %89 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %88, i32 0, i32 2
  %90 = call i32 @spin_unlock(i32* %89)
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %5, align 4
  br label %134

92:                                               ; preds = %79
  %93 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %7, align 8
  %94 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %93, i32 0, i32 3
  %95 = load i32, i32* %11, align 4
  %96 = call %struct.xen_pvcalls_request* @RING_GET_REQUEST(%struct.TYPE_11__* %94, i32 %95)
  store %struct.xen_pvcalls_request* %96, %struct.xen_pvcalls_request** %13, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %13, align 8
  %99 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* @PVCALLS_POLL, align 4
  %101 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %13, align 8
  %102 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.sock_mapping*, %struct.sock_mapping** %8, align 8
  %104 = ptrtoint %struct.sock_mapping* %103 to i64
  %105 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %13, align 8
  %106 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  store i64 %104, i64* %108, align 8
  %109 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %7, align 8
  %110 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  %114 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %7, align 8
  %115 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %114, i32 0, i32 3
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(%struct.TYPE_11__* %115, i32 %116)
  %118 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %7, align 8
  %119 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %118, i32 0, i32 2
  %120 = call i32 @spin_unlock(i32* %119)
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %92
  %124 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %7, align 8
  %125 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @notify_remote_via_irq(i32 %126)
  br label %128

128:                                              ; preds = %123, %92
  %129 = load %struct.file*, %struct.file** %6, align 8
  %130 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %7, align 8
  %131 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %130, i32 0, i32 0
  %132 = load i32*, i32** %9, align 8
  %133 = call i32 @poll_wait(%struct.file* %129, i32* %131, i32* %132)
  store i32 0, i32* %5, align 4
  br label %134

134:                                              ; preds = %128, %87, %73, %61, %46, %42
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i64 @test_bit(i32, i8*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i8*) #1

declare dso_local i64 @test_and_set_bit(i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @get_request(%struct.pvcalls_bedata*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.xen_pvcalls_request* @RING_GET_REQUEST(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @notify_remote_via_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
