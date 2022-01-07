; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_alias.c_dasd_alias_make_device_known_to_lcu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_alias.c_dasd_alias_make_device_known_to_lcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.dasd_device = type { i32, %struct.TYPE_3__*, %struct.dasd_eckd_private* }
%struct.TYPE_3__ = type { i32 (%struct.dasd_device*, %struct.dasd_uid*)* }
%struct.dasd_uid = type { i32 }
%struct.dasd_eckd_private = type { %struct.alias_server* }
%struct.alias_server = type { i32, i32, i32, i32, i32 }
%struct.alias_lcu = type { i32, i32, i32, i32, i32 }

@aliastree = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_alias_make_device_known_to_lcu(%struct.dasd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_eckd_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.alias_server*, align 8
  %7 = alloca %struct.alias_server*, align 8
  %8 = alloca %struct.alias_lcu*, align 8
  %9 = alloca %struct.alias_lcu*, align 8
  %10 = alloca %struct.dasd_uid, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  %11 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %12 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %11, i32 0, i32 2
  %13 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %12, align 8
  store %struct.dasd_eckd_private* %13, %struct.dasd_eckd_private** %4, align 8
  %14 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %15 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.dasd_device*, %struct.dasd_uid*)*, i32 (%struct.dasd_device*, %struct.dasd_uid*)** %17, align 8
  %19 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %20 = call i32 %18(%struct.dasd_device* %19, %struct.dasd_uid* %10)
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aliastree, i32 0, i32 0), i64 %21)
  %23 = call %struct.alias_server* @_find_server(%struct.dasd_uid* %10)
  store %struct.alias_server* %23, %struct.alias_server** %6, align 8
  %24 = load %struct.alias_server*, %struct.alias_server** %6, align 8
  %25 = icmp ne %struct.alias_server* %24, null
  br i1 %25, label %51, label %26

26:                                               ; preds = %1
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aliastree, i32 0, i32 0), i64 %27)
  %29 = call %struct.alias_server* @_allocate_server(%struct.dasd_uid* %10)
  store %struct.alias_server* %29, %struct.alias_server** %7, align 8
  %30 = load %struct.alias_server*, %struct.alias_server** %7, align 8
  %31 = call i64 @IS_ERR(%struct.alias_server* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.alias_server*, %struct.alias_server** %7, align 8
  %35 = call i32 @PTR_ERR(%struct.alias_server* %34)
  store i32 %35, i32* %2, align 4
  br label %108

36:                                               ; preds = %26
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aliastree, i32 0, i32 0), i64 %37)
  %39 = call %struct.alias_server* @_find_server(%struct.dasd_uid* %10)
  store %struct.alias_server* %39, %struct.alias_server** %6, align 8
  %40 = load %struct.alias_server*, %struct.alias_server** %6, align 8
  %41 = icmp ne %struct.alias_server* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = load %struct.alias_server*, %struct.alias_server** %7, align 8
  %44 = getelementptr inbounds %struct.alias_server, %struct.alias_server* %43, i32 0, i32 4
  %45 = call i32 @list_add(i32* %44, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aliastree, i32 0, i32 1))
  %46 = load %struct.alias_server*, %struct.alias_server** %7, align 8
  store %struct.alias_server* %46, %struct.alias_server** %6, align 8
  br label %50

47:                                               ; preds = %36
  %48 = load %struct.alias_server*, %struct.alias_server** %7, align 8
  %49 = call i32 @_free_server(%struct.alias_server* %48)
  br label %50

50:                                               ; preds = %47, %42
  br label %51

51:                                               ; preds = %50, %1
  %52 = load %struct.alias_server*, %struct.alias_server** %6, align 8
  %53 = call %struct.alias_server* @_find_lcu(%struct.alias_server* %52, %struct.dasd_uid* %10)
  %54 = bitcast %struct.alias_server* %53 to %struct.alias_lcu*
  store %struct.alias_lcu* %54, %struct.alias_lcu** %8, align 8
  %55 = load %struct.alias_lcu*, %struct.alias_lcu** %8, align 8
  %56 = icmp ne %struct.alias_lcu* %55, null
  br i1 %56, label %90, label %57

57:                                               ; preds = %51
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aliastree, i32 0, i32 0), i64 %58)
  %60 = call %struct.alias_server* @_allocate_lcu(%struct.dasd_uid* %10)
  %61 = bitcast %struct.alias_server* %60 to %struct.alias_lcu*
  store %struct.alias_lcu* %61, %struct.alias_lcu** %9, align 8
  %62 = load %struct.alias_lcu*, %struct.alias_lcu** %9, align 8
  %63 = bitcast %struct.alias_lcu* %62 to %struct.alias_server*
  %64 = call i64 @IS_ERR(%struct.alias_server* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load %struct.alias_lcu*, %struct.alias_lcu** %9, align 8
  %68 = bitcast %struct.alias_lcu* %67 to %struct.alias_server*
  %69 = call i32 @PTR_ERR(%struct.alias_server* %68)
  store i32 %69, i32* %2, align 4
  br label %108

70:                                               ; preds = %57
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aliastree, i32 0, i32 0), i64 %71)
  %73 = load %struct.alias_server*, %struct.alias_server** %6, align 8
  %74 = call %struct.alias_server* @_find_lcu(%struct.alias_server* %73, %struct.dasd_uid* %10)
  %75 = bitcast %struct.alias_server* %74 to %struct.alias_lcu*
  store %struct.alias_lcu* %75, %struct.alias_lcu** %8, align 8
  %76 = load %struct.alias_lcu*, %struct.alias_lcu** %8, align 8
  %77 = icmp ne %struct.alias_lcu* %76, null
  br i1 %77, label %85, label %78

78:                                               ; preds = %70
  %79 = load %struct.alias_lcu*, %struct.alias_lcu** %9, align 8
  %80 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %79, i32 0, i32 3
  %81 = load %struct.alias_server*, %struct.alias_server** %6, align 8
  %82 = getelementptr inbounds %struct.alias_server, %struct.alias_server* %81, i32 0, i32 2
  %83 = call i32 @list_add(i32* %80, i32* %82)
  %84 = load %struct.alias_lcu*, %struct.alias_lcu** %9, align 8
  store %struct.alias_lcu* %84, %struct.alias_lcu** %8, align 8
  br label %89

85:                                               ; preds = %70
  %86 = load %struct.alias_lcu*, %struct.alias_lcu** %9, align 8
  %87 = bitcast %struct.alias_lcu* %86 to %struct.alias_server*
  %88 = call i32 @_free_lcu(%struct.alias_server* %87)
  br label %89

89:                                               ; preds = %85, %78
  br label %90

90:                                               ; preds = %89, %51
  %91 = load %struct.alias_lcu*, %struct.alias_lcu** %8, align 8
  %92 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %91, i32 0, i32 0
  %93 = call i32 @spin_lock(i32* %92)
  %94 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %95 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %94, i32 0, i32 0
  %96 = load %struct.alias_lcu*, %struct.alias_lcu** %8, align 8
  %97 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %96, i32 0, i32 1
  %98 = call i32 @list_add(i32* %95, i32* %97)
  %99 = load %struct.alias_lcu*, %struct.alias_lcu** %8, align 8
  %100 = bitcast %struct.alias_lcu* %99 to %struct.alias_server*
  %101 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %102 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %101, i32 0, i32 0
  store %struct.alias_server* %100, %struct.alias_server** %102, align 8
  %103 = load %struct.alias_lcu*, %struct.alias_lcu** %8, align 8
  %104 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %103, i32 0, i32 0
  %105 = call i32 @spin_unlock(i32* %104)
  %106 = load i64, i64* %5, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aliastree, i32 0, i32 0), i64 %106)
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %90, %66, %33
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.alias_server* @_find_server(%struct.dasd_uid*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.alias_server* @_allocate_server(%struct.dasd_uid*) #1

declare dso_local i64 @IS_ERR(%struct.alias_server*) #1

declare dso_local i32 @PTR_ERR(%struct.alias_server*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @_free_server(%struct.alias_server*) #1

declare dso_local %struct.alias_server* @_find_lcu(%struct.alias_server*, %struct.dasd_uid*) #1

declare dso_local %struct.alias_server* @_allocate_lcu(%struct.dasd_uid*) #1

declare dso_local i32 @_free_lcu(%struct.alias_server*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
