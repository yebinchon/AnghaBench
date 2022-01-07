; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_init_peers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_init_peers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_ctx = type { i32, i32, %struct.TYPE_3__*, %struct.perf_peer* }
%struct.TYPE_3__ = type { i32 }
%struct.perf_peer = type { i32, i32, i32, %struct.perf_ctx* }

@perf_service_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Global port index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_ctx*)* @perf_init_peers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_init_peers(%struct.perf_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_ctx*, align 8
  %4 = alloca %struct.perf_peer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.perf_ctx* %0, %struct.perf_ctx** %3, align 8
  %8 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = call i32 @ntb_port_number(%struct.TYPE_3__* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %12, i32 0, i32 0
  store i32 -1, i32* %13, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %63, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %66

20:                                               ; preds = %14
  %21 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %21, i32 0, i32 3
  %23 = load %struct.perf_peer*, %struct.perf_peer** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %23, i64 %25
  store %struct.perf_peer* %26, %struct.perf_peer** %4, align 8
  %27 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %28 = load %struct.perf_peer*, %struct.perf_peer** %4, align 8
  %29 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %28, i32 0, i32 3
  store %struct.perf_ctx* %27, %struct.perf_ctx** %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.perf_peer*, %struct.perf_peer** %4, align 8
  %32 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @ntb_peer_port_number(%struct.TYPE_3__* %36, i32 %37)
  %39 = icmp slt i32 %33, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %20
  %41 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %42 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  %52 = load %struct.perf_peer*, %struct.perf_peer** %4, align 8
  %53 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %58

54:                                               ; preds = %20
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.perf_peer*, %struct.perf_peer** %4, align 8
  %57 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.perf_peer*, %struct.perf_peer** %4, align 8
  %60 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %59, i32 0, i32 2
  %61 = load i32, i32* @perf_service_work, align 4
  %62 = call i32 @INIT_WORK(i32* %60, i32 %61)
  br label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %14

66:                                               ; preds = %14
  %67 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %68 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %74 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %71, %66
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %95, %75
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %79 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %76
  %83 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %84 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %83, i32 0, i32 3
  %85 = load %struct.perf_peer*, %struct.perf_peer** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %85, i64 %87
  %89 = call i32 @perf_setup_peer_mw(%struct.perf_peer* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %2, align 4
  br label %107

94:                                               ; preds = %82
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %76

98:                                               ; preds = %76
  %99 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %100 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %99, i32 0, i32 2
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %104 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @dev_dbg(i32* %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %105)
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %98, %92
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @ntb_port_number(%struct.TYPE_3__*) #1

declare dso_local i32 @ntb_peer_port_number(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @perf_setup_peer_mw(%struct.perf_peer*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
