; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_altmode_update_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_altmode_update_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_altmode = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"mode%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @typec_altmode_update_active(%struct.typec_altmode* %0, i32 %1) #0 {
  %3 = alloca %struct.typec_altmode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [6 x i8], align 1
  store %struct.typec_altmode* %0, %struct.typec_altmode** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %7 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %72

12:                                               ; preds = %2
  %13 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %14 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @is_typec_port(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %49, label %19

19:                                               ; preds = %12
  %20 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %21 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %25, label %49

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  %29 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %30 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @module_put(i32 %34)
  br label %48

36:                                               ; preds = %25
  %37 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %38 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @try_module_get(i32 %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @WARN_ON(i32 %46)
  br label %48

48:                                               ; preds = %36, %28
  br label %49

49:                                               ; preds = %48, %19, %12
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %52 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %54 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %55 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @snprintf(i8* %53, i32 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %59 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %62 = call i32 @sysfs_notify(i32* %60, i8* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %64 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @sysfs_notify(i32* %65, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %68 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* @KOBJ_CHANGE, align 4
  %71 = call i32 @kobject_uevent(i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %49, %11
  ret void
}

declare dso_local i32 @is_typec_port(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @sysfs_notify(i32*, i8*, i8*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
