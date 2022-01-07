; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_alias.c_dasd_alias_disconnect_device_from_lcu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_alias.c_dasd_alias_disconnect_device_from_lcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.dasd_device = type { i32, %struct.TYPE_5__*, %struct.dasd_eckd_private* }
%struct.TYPE_5__ = type { i32 (%struct.dasd_device*, %struct.dasd_uid*)* }
%struct.dasd_uid = type { i32 }
%struct.dasd_eckd_private = type { %struct.alias_lcu* }
%struct.alias_lcu = type { i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.dasd_device*, i32 }
%struct.TYPE_6__ = type { %struct.dasd_device*, i32 }
%struct.alias_server = type { i32, i32 }

@aliastree = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dasd_alias_disconnect_device_from_lcu(%struct.dasd_device* %0) #0 {
  %2 = alloca %struct.dasd_device*, align 8
  %3 = alloca %struct.dasd_eckd_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.alias_lcu*, align 8
  %6 = alloca %struct.alias_server*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dasd_uid, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %2, align 8
  %9 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %10 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %9, i32 0, i32 2
  %11 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %10, align 8
  store %struct.dasd_eckd_private* %11, %struct.dasd_eckd_private** %3, align 8
  %12 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %13 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %12, i32 0, i32 0
  %14 = load %struct.alias_lcu*, %struct.alias_lcu** %13, align 8
  store %struct.alias_lcu* %14, %struct.alias_lcu** %5, align 8
  %15 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %16 = icmp ne %struct.alias_lcu* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %161

18:                                               ; preds = %1
  %19 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %20 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32 (%struct.dasd_device*, %struct.dasd_uid*)*, i32 (%struct.dasd_device*, %struct.dasd_uid*)** %22, align 8
  %24 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %25 = call i32 %23(%struct.dasd_device* %24, %struct.dasd_uid* %8)
  %26 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %27 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %26, i32 0, i32 0
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %31 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %30, i32 0, i32 0
  %32 = call i32 @list_del_init(i32* %31)
  %33 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %34 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %35 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.dasd_device*, %struct.dasd_device** %36, align 8
  %38 = icmp eq %struct.dasd_device* %33, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %18
  %40 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %41 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %40, i32 0, i32 0
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %45 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = call i32 @cancel_work_sync(i32* %46)
  %48 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %49 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %48, i32 0, i32 0
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  %52 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %53 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %54 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.dasd_device*, %struct.dasd_device** %55, align 8
  %57 = icmp eq %struct.dasd_device* %52, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %39
  %59 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %60 = call i32 @dasd_put_device(%struct.dasd_device* %59)
  %61 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %62 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store %struct.dasd_device* null, %struct.dasd_device** %63, align 8
  br label %64

64:                                               ; preds = %58, %39
  br label %65

65:                                               ; preds = %64, %18
  store i32 0, i32* %7, align 4
  %66 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %67 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %68 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.dasd_device*, %struct.dasd_device** %69, align 8
  %71 = icmp eq %struct.dasd_device* %66, %70
  br i1 %71, label %72, label %98

72:                                               ; preds = %65
  %73 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %74 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %73, i32 0, i32 0
  %75 = load i64, i64* %4, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  store i32 1, i32* %7, align 4
  %77 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %78 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = call i32 @cancel_delayed_work_sync(i32* %79)
  %81 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %82 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %81, i32 0, i32 0
  %83 = load i64, i64* %4, align 8
  %84 = call i32 @spin_lock_irqsave(i32* %82, i64 %83)
  %85 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %86 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %87 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load %struct.dasd_device*, %struct.dasd_device** %88, align 8
  %90 = icmp eq %struct.dasd_device* %85, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %72
  %92 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %93 = call i32 @dasd_put_device(%struct.dasd_device* %92)
  %94 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %95 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  store %struct.dasd_device* null, %struct.dasd_device** %96, align 8
  br label %97

97:                                               ; preds = %91, %72
  br label %98

98:                                               ; preds = %97, %65
  %99 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %100 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %99, i32 0, i32 0
  store %struct.alias_lcu* null, %struct.alias_lcu** %100, align 8
  %101 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %102 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %101, i32 0, i32 0
  %103 = load i64, i64* %4, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  %105 = load i64, i64* %4, align 8
  %106 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aliastree, i32 0, i32 0), i64 %105)
  %107 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %108 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %107, i32 0, i32 0
  %109 = call i32 @spin_lock(i32* %108)
  %110 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %111 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %110, i32 0, i32 4
  %112 = call i64 @list_empty(i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %133

114:                                              ; preds = %98
  %115 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %116 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %115, i32 0, i32 3
  %117 = call i64 @list_empty(i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %114
  %120 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %121 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %120, i32 0, i32 2
  %122 = call i64 @list_empty(i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %119
  %125 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %126 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %125, i32 0, i32 1
  %127 = call i32 @list_del(i32* %126)
  %128 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %129 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %128, i32 0, i32 0
  %130 = call i32 @spin_unlock(i32* %129)
  %131 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %132 = call i32 @_free_lcu(%struct.alias_lcu* %131)
  store %struct.alias_lcu* null, %struct.alias_lcu** %5, align 8
  br label %143

133:                                              ; preds = %119, %114, %98
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %138 = call i32 @_schedule_lcu_update(%struct.alias_lcu* %137, i32* null)
  br label %139

139:                                              ; preds = %136, %133
  %140 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %141 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %140, i32 0, i32 0
  %142 = call i32 @spin_unlock(i32* %141)
  br label %143

143:                                              ; preds = %139, %124
  %144 = call %struct.alias_server* @_find_server(%struct.dasd_uid* %8)
  store %struct.alias_server* %144, %struct.alias_server** %6, align 8
  %145 = load %struct.alias_server*, %struct.alias_server** %6, align 8
  %146 = icmp ne %struct.alias_server* %145, null
  br i1 %146, label %147, label %158

147:                                              ; preds = %143
  %148 = load %struct.alias_server*, %struct.alias_server** %6, align 8
  %149 = getelementptr inbounds %struct.alias_server, %struct.alias_server* %148, i32 0, i32 1
  %150 = call i64 @list_empty(i32* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load %struct.alias_server*, %struct.alias_server** %6, align 8
  %154 = getelementptr inbounds %struct.alias_server, %struct.alias_server* %153, i32 0, i32 0
  %155 = call i32 @list_del(i32* %154)
  %156 = load %struct.alias_server*, %struct.alias_server** %6, align 8
  %157 = call i32 @_free_server(%struct.alias_server* %156)
  br label %158

158:                                              ; preds = %152, %147, %143
  %159 = load i64, i64* %4, align 8
  %160 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aliastree, i32 0, i32 0), i64 %159)
  br label %161

161:                                              ; preds = %158, %17
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @_free_lcu(%struct.alias_lcu*) #1

declare dso_local i32 @_schedule_lcu_update(%struct.alias_lcu*, i32*) #1

declare dso_local %struct.alias_server* @_find_server(%struct.dasd_uid*) #1

declare dso_local i32 @_free_server(%struct.alias_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
