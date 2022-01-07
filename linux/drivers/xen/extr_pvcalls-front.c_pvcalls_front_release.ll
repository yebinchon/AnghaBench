; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_pvcalls_front_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_pvcalls_front_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.socket = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }
%struct.pvcalls_bedata = type { %struct.TYPE_17__*, i32, i32, i32, %struct.TYPE_19__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.sock_mapping = type { %struct.TYPE_16__, i32, i32, %struct.TYPE_15__, i64 }
%struct.TYPE_16__ = type { %struct.sock_mapping*, i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.xen_pvcalls_request = type { i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@ENOTCONN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@pvcalls_front_dev = common dso_local global %struct.TYPE_18__* null, align 8
@PVCALLS_RELEASE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@PVCALLS_INVALID_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvcalls_front_release(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.pvcalls_bedata*, align 8
  %5 = alloca %struct.sock_mapping*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xen_pvcalls_request*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %10 = load %struct.socket*, %struct.socket** %3, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = icmp eq %struct.TYPE_11__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %195

15:                                               ; preds = %1
  %16 = load %struct.socket*, %struct.socket** %3, align 8
  %17 = call %struct.sock_mapping* @pvcalls_enter_sock(%struct.socket* %16)
  store %struct.sock_mapping* %17, %struct.sock_mapping** %5, align 8
  %18 = load %struct.sock_mapping*, %struct.sock_mapping** %5, align 8
  %19 = call i64 @IS_ERR(%struct.sock_mapping* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load %struct.sock_mapping*, %struct.sock_mapping** %5, align 8
  %23 = call i32 @PTR_ERR(%struct.sock_mapping* %22)
  %24 = load i32, i32* @ENOTCONN, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %195

30:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %195

31:                                               ; preds = %15
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pvcalls_front_dev, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = call %struct.pvcalls_bedata* @dev_get_drvdata(i32* %33)
  store %struct.pvcalls_bedata* %34, %struct.pvcalls_bedata** %4, align 8
  %35 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %36 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %35, i32 0, i32 1
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %39 = call i32 @get_request(%struct.pvcalls_bedata* %38, i32* %6)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %31
  %43 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %44 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %43, i32 0, i32 1
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load %struct.socket*, %struct.socket** %3, align 8
  %47 = call i32 @pvcalls_exit_sock(%struct.socket* %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %2, align 4
  br label %195

49:                                               ; preds = %31
  %50 = load %struct.socket*, %struct.socket** %3, align 8
  %51 = getelementptr inbounds %struct.socket, %struct.socket* %50, i32 0, i32 0
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  %54 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %55 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %54, i32 0, i32 4
  %56 = load i32, i32* %6, align 4
  %57 = call %struct.xen_pvcalls_request* @RING_GET_REQUEST(%struct.TYPE_19__* %55, i32 %56)
  store %struct.xen_pvcalls_request* %57, %struct.xen_pvcalls_request** %9, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %9, align 8
  %60 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @PVCALLS_RELEASE, align 4
  %62 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %9, align 8
  %63 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.sock_mapping*, %struct.sock_mapping** %5, align 8
  %65 = ptrtoint %struct.sock_mapping* %64 to i64
  %66 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %9, align 8
  %67 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  store i64 %65, i64* %69, align 8
  %70 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %71 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %76 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %75, i32 0, i32 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(%struct.TYPE_19__* %76, i32 %77)
  %79 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %80 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %79, i32 0, i32 1
  %81 = call i32 @spin_unlock(i32* %80)
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %49
  %85 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %86 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @notify_remote_via_irq(i32 %87)
  br label %89

89:                                               ; preds = %84, %49
  %90 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %91 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %94 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %93, i32 0, i32 0
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @READ_ONCE(i32 %100)
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = icmp eq i64 %101, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @wait_event(i32 %92, i32 %105)
  %107 = load %struct.sock_mapping*, %struct.sock_mapping** %5, align 8
  %108 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %134

111:                                              ; preds = %89
  %112 = load i32, i32* @EBADF, align 4
  %113 = sub nsw i32 0, %112
  %114 = load %struct.sock_mapping*, %struct.sock_mapping** %5, align 8
  %115 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  store i32 %113, i32* %118, align 4
  %119 = load %struct.sock_mapping*, %struct.sock_mapping** %5, align 8
  %120 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = call i32 @wake_up_interruptible(i32* %121)
  br label %123

123:                                              ; preds = %128, %111
  %124 = load %struct.sock_mapping*, %struct.sock_mapping** %5, align 8
  %125 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %124, i32 0, i32 2
  %126 = call i32 @atomic_read(i32* %125)
  %127 = icmp sgt i32 %126, 1
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = call i32 (...) @cpu_relax()
  br label %123

130:                                              ; preds = %123
  %131 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %132 = load %struct.sock_mapping*, %struct.sock_mapping** %5, align 8
  %133 = call i32 @pvcalls_front_free_map(%struct.pvcalls_bedata* %131, %struct.sock_mapping* %132)
  br label %183

134:                                              ; preds = %89
  %135 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %136 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %135, i32 0, i32 2
  %137 = call i32 @wake_up(i32* %136)
  %138 = load %struct.sock_mapping*, %struct.sock_mapping** %5, align 8
  %139 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 2
  %141 = call i32 @wake_up(i32* %140)
  br label %142

142:                                              ; preds = %147, %134
  %143 = load %struct.sock_mapping*, %struct.sock_mapping** %5, align 8
  %144 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %143, i32 0, i32 2
  %145 = call i32 @atomic_read(i32* %144)
  %146 = icmp sgt i32 %145, 1
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = call i32 (...) @cpu_relax()
  br label %142

149:                                              ; preds = %142
  %150 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %151 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %150, i32 0, i32 1
  %152 = call i32 @spin_lock(i32* %151)
  %153 = load %struct.sock_mapping*, %struct.sock_mapping** %5, align 8
  %154 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %153, i32 0, i32 1
  %155 = call i32 @list_del(i32* %154)
  %156 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %157 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %156, i32 0, i32 1
  %158 = call i32 @spin_unlock(i32* %157)
  %159 = load %struct.sock_mapping*, %struct.sock_mapping** %5, align 8
  %160 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = call i64 @READ_ONCE(i32 %162)
  %164 = load i64, i64* @PVCALLS_INVALID_ID, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %180

166:                                              ; preds = %149
  %167 = load %struct.sock_mapping*, %struct.sock_mapping** %5, align 8
  %168 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = call i64 @READ_ONCE(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %166
  %174 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %175 = load %struct.sock_mapping*, %struct.sock_mapping** %5, align 8
  %176 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = load %struct.sock_mapping*, %struct.sock_mapping** %177, align 8
  %179 = call i32 @pvcalls_front_free_map(%struct.pvcalls_bedata* %174, %struct.sock_mapping* %178)
  br label %180

180:                                              ; preds = %173, %166, %149
  %181 = load %struct.sock_mapping*, %struct.sock_mapping** %5, align 8
  %182 = call i32 @kfree(%struct.sock_mapping* %181)
  br label %183

183:                                              ; preds = %180, %130
  %184 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %185 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %184, i32 0, i32 0
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %185, align 8
  %187 = load i32, i32* %6, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i64, i64* @PVCALLS_INVALID_ID, align 8
  %193 = call i32 @WRITE_ONCE(i32 %191, i64 %192)
  %194 = call i32 (...) @pvcalls_exit()
  store i32 0, i32* %2, align 4
  br label %195

195:                                              ; preds = %183, %42, %30, %27, %14
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local %struct.sock_mapping* @pvcalls_enter_sock(%struct.socket*) #1

declare dso_local i64 @IS_ERR(%struct.sock_mapping*) #1

declare dso_local i32 @PTR_ERR(%struct.sock_mapping*) #1

declare dso_local %struct.pvcalls_bedata* @dev_get_drvdata(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @get_request(%struct.pvcalls_bedata*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pvcalls_exit_sock(%struct.socket*) #1

declare dso_local %struct.xen_pvcalls_request* @RING_GET_REQUEST(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @notify_remote_via_irq(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @pvcalls_front_free_map(%struct.pvcalls_bedata*, %struct.sock_mapping*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.sock_mapping*) #1

declare dso_local i32 @WRITE_ONCE(i32, i64) #1

declare dso_local i32 @pvcalls_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
