; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_interface.c_if_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_interface.c_if_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.cardstate*, i32)*, i32 (%struct.cardstate*, i32)*, i32 (%struct.cardstate*, i32, i32)* }

@DEBUG_IF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%u: if_lock (%d)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MS_LOCKED = common dso_local global i64 0, align 8
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@B115200 = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@EV_IF_LOCK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cardstate*, i32*)* @if_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_lock(%struct.cardstate* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cardstate*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.cardstate* %0, %struct.cardstate** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @DEBUG_IF, align 4
  %10 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %11 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @gig_dbg(i32 %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %118

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %25 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MS_LOCKED, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  store i32 0, i32* %3, align 4
  br label %118

31:                                               ; preds = %20
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %77, label %34

34:                                               ; preds = %31
  %35 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %36 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MS_LOCKED, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %77

40:                                               ; preds = %34
  %41 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %42 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %77

45:                                               ; preds = %40
  %46 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %47 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %46, i32 0, i32 6
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32 (%struct.cardstate*, i32, i32)*, i32 (%struct.cardstate*, i32, i32)** %49, align 8
  %51 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %52 = load i32, i32* @TIOCM_DTR, align 4
  %53 = load i32, i32* @TIOCM_RTS, align 4
  %54 = or i32 %52, %53
  %55 = call i32 %50(%struct.cardstate* %51, i32 0, i32 %54)
  %56 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %57 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %56, i32 0, i32 6
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32 (%struct.cardstate*, i32)*, i32 (%struct.cardstate*, i32)** %59, align 8
  %61 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %62 = load i32, i32* @B115200, align 4
  %63 = call i32 %60(%struct.cardstate* %61, i32 %62)
  %64 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %65 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %64, i32 0, i32 6
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32 (%struct.cardstate*, i32)*, i32 (%struct.cardstate*, i32)** %67, align 8
  %69 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %70 = load i32, i32* @CS8, align 4
  %71 = call i32 %68(%struct.cardstate* %69, i32 %70)
  %72 = load i32, i32* @TIOCM_DTR, align 4
  %73 = load i32, i32* @TIOCM_RTS, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %76 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %45, %40, %34, %31
  %78 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %79 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %78, i32 0, i32 2
  store i32 1, i32* %79, align 4
  %80 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %81 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %82 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %81, i32 0, i32 5
  %83 = load i32, i32* @EV_IF_LOCK, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @gigaset_add_event(%struct.cardstate* %80, i32* %82, i32 %83, i32* null, i32 %84, i32* null)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %77
  %88 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %89 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %88, i32 0, i32 2
  store i32 0, i32* %89, align 4
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %118

92:                                               ; preds = %77
  %93 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %94 = call i32 @gigaset_schedule_event(%struct.cardstate* %93)
  %95 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %96 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %99 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = call i32 @wait_event(i32 %97, i32 %103)
  %105 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %106 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %92
  %110 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %111 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load i32*, i32** %5, align 8
  store i32 %112, i32* %113, align 4
  store i32 0, i32* %3, align 4
  br label %118

114:                                              ; preds = %92
  %115 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %116 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %114, %109, %87, %23, %17
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @gig_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @gigaset_add_event(%struct.cardstate*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @gigaset_schedule_event(%struct.cardstate*) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
