; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_con_install.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_con_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.vc_data* }
%struct.vc_data = type { i64, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.vc_data* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.tty_driver = type { i32 }

@vc_cons = common dso_local global %struct.TYPE_7__* null, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@IUTF8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_driver*, %struct.tty_struct*)* @con_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @con_install(%struct.tty_driver* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca %struct.tty_driver*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vc_data*, align 8
  %7 = alloca i32, align 4
  store %struct.tty_driver* %0, %struct.tty_driver** %3, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = call i32 (...) @console_lock()
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @vc_allocate(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %104

17:                                               ; preds = %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vc_cons, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.vc_data*, %struct.vc_data** %22, align 8
  store %struct.vc_data* %23, %struct.vc_data** %6, align 8
  %24 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %25 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.tty_struct*, %struct.tty_struct** %26, align 8
  %28 = icmp ne %struct.tty_struct* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load i32, i32* @ERESTARTSYS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %104

32:                                               ; preds = %17
  %33 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 3
  %35 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %36 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %37 = call i32 @tty_port_install(%struct.TYPE_8__* %34, %struct.tty_driver* %35, %struct.tty_struct* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %104

41:                                               ; preds = %32
  %42 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %43 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %44 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %43, i32 0, i32 3
  store %struct.vc_data* %42, %struct.vc_data** %44, align 8
  %45 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %46 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %47 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store %struct.tty_struct* %45, %struct.tty_struct** %48, align 8
  %49 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %50 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %83, label %54

54:                                               ; preds = %41
  %55 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %56 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %83, label %60

60:                                               ; preds = %54
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vc_cons, align 8
  %62 = load i32, i32* %5, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load %struct.vc_data*, %struct.vc_data** %65, align 8
  %67 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %70 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vc_cons, align 8
  %73 = load i32, i32* %5, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load %struct.vc_data*, %struct.vc_data** %76, align 8
  %78 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %81 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  br label %83

83:                                               ; preds = %60, %54, %41
  %84 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %85 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load i32, i32* @IUTF8, align 4
  %90 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %91 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %89
  store i32 %94, i32* %92, align 4
  br label %103

95:                                               ; preds = %83
  %96 = load i32, i32* @IUTF8, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %99 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, %97
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %95, %88
  br label %104

104:                                              ; preds = %103, %40, %29, %16
  %105 = call i32 (...) @console_unlock()
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local i32 @console_lock(...) #1

declare dso_local i32 @vc_allocate(i32) #1

declare dso_local i32 @tty_port_install(%struct.TYPE_8__*, %struct.tty_driver*, %struct.tty_struct*) #1

declare dso_local i32 @console_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
