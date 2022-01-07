; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_sw_set_unplugged.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_sw_set_unplugged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32, %struct.TYPE_10__*, %struct.TYPE_6__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.tb_switch* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { %struct.tb_switch* }

@.str = private unnamed_addr constant [27 x i8] c"cannot unplug root switch\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"is_unplugged already set\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tb_sw_set_unplugged(%struct.tb_switch* %0) #0 {
  %2 = alloca %struct.tb_switch*, align 8
  %3 = alloca i32, align 4
  store %struct.tb_switch* %0, %struct.tb_switch** %2, align 8
  %4 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %5 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %6 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %5, i32 0, i32 3
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %10 = icmp eq %struct.tb_switch* %4, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %13 = call i32 @tb_sw_WARN(%struct.tb_switch* %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %77

14:                                               ; preds = %1
  %15 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %16 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %21 = call i32 @tb_sw_WARN(%struct.tb_switch* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %77

22:                                               ; preds = %14
  %23 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %24 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %74, %22
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %28 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sle i32 %26, %30
  br i1 %31, label %32, label %77

32:                                               ; preds = %25
  %33 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %34 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %33, i32 0, i32 1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %37
  %39 = call i64 @tb_port_has_remote(%struct.TYPE_10__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %32
  %42 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %43 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.tb_switch*, %struct.tb_switch** %50, align 8
  call void @tb_sw_set_unplugged(%struct.tb_switch* %51)
  br label %73

52:                                               ; preds = %32
  %53 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %54 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %53, i32 0, i32 1
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = icmp ne %struct.TYPE_8__* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %52
  %63 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %64 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %63, i32 0, i32 1
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 4
  br label %72

72:                                               ; preds = %62, %52
  br label %73

73:                                               ; preds = %72, %41
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %25

77:                                               ; preds = %11, %19, %25
  ret void
}

declare dso_local i32 @tb_sw_WARN(%struct.tb_switch*, i8*) #1

declare dso_local i64 @tb_port_has_remote(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
