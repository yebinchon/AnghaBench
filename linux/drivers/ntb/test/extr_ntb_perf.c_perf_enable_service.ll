; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_enable_service.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_enable_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_ctx = type { i64, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32 }

@perf_ops = common dso_local global i32 0, align 4
@perf_msg_cmd_send = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"MSG sts unmasked %#llx\0A\00", align 1
@PERF_CMD_INVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"DB bits unmasked %#llx\0A\00", align 1
@NTB_SPEED_AUTO = common dso_local global i32 0, align 4
@NTB_WIDTH_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_ctx*)* @perf_enable_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_enable_service(%struct.perf_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.perf_ctx* %0, %struct.perf_ctx** %3, align 8
  %11 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %11, i32 0, i32 1
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %14 = call i32 @ntb_db_valid_mask(%struct.TYPE_14__* %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %15, i32 0, i32 1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @ntb_db_set_mask(%struct.TYPE_14__* %17, i32 %18)
  %20 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %20, i32 0, i32 1
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %24 = call i32 @ntb_set_ctx(%struct.TYPE_14__* %22, %struct.perf_ctx* %23, i32* @perf_ops)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %120

29:                                               ; preds = %1
  %30 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @perf_msg_cmd_send, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %29
  %36 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %36, i32 0, i32 1
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = call i32 @ntb_msg_inbits(%struct.TYPE_14__* %38)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %40, i32 0, i32 1
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = call i32 @ntb_msg_outbits(%struct.TYPE_14__* %42)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %44, i32 0, i32 1
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @ntb_msg_set_mask(%struct.TYPE_14__* %46, i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @__ffs64(i32 %51)
  %53 = call i32 @BIT_ULL(i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %54, i32 0, i32 1
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @ntb_msg_clear_mask(%struct.TYPE_14__* %56, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %60 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %59, i32 0, i32 1
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @dev_dbg(i32* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %100

65:                                               ; preds = %29
  %66 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %67 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %66, i32 0, i32 1
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = call i32 @ntb_spad_count(%struct.TYPE_14__* %68)
  store i32 %69, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %81, %65
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %76 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %75, i32 0, i32 1
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @PERF_CMD_INVAL, align 4
  %80 = call i32 @ntb_spad_write(%struct.TYPE_14__* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %74
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %70

84:                                               ; preds = %70
  %85 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %86 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @PERF_SPAD_NOTIFY(i32 %87)
  store i32 %88, i32* %5, align 4
  %89 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %90 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %89, i32 0, i32 1
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @ntb_db_clear_mask(%struct.TYPE_14__* %91, i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %95 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %94, i32 0, i32 1
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @dev_dbg(i32* %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %84, %35
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %105 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %104, i32 0, i32 1
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = call i32 @ntb_clear_ctx(%struct.TYPE_14__* %106)
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %2, align 4
  br label %120

109:                                              ; preds = %100
  %110 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %111 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %110, i32 0, i32 1
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %111, align 8
  %113 = load i32, i32* @NTB_SPEED_AUTO, align 4
  %114 = load i32, i32* @NTB_WIDTH_AUTO, align 4
  %115 = call i32 @ntb_link_enable(%struct.TYPE_14__* %112, i32 %113, i32 %114)
  %116 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %117 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %116, i32 0, i32 1
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = call i32 @ntb_link_event(%struct.TYPE_14__* %118)
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %109, %103, %27
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @ntb_db_valid_mask(%struct.TYPE_14__*) #1

declare dso_local i32 @ntb_db_set_mask(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ntb_set_ctx(%struct.TYPE_14__*, %struct.perf_ctx*, i32*) #1

declare dso_local i32 @ntb_msg_inbits(%struct.TYPE_14__*) #1

declare dso_local i32 @ntb_msg_outbits(%struct.TYPE_14__*) #1

declare dso_local i32 @ntb_msg_set_mask(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @__ffs64(i32) #1

declare dso_local i32 @ntb_msg_clear_mask(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @ntb_spad_count(%struct.TYPE_14__*) #1

declare dso_local i32 @ntb_spad_write(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @PERF_SPAD_NOTIFY(i32) #1

declare dso_local i32 @ntb_db_clear_mask(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ntb_clear_ctx(%struct.TYPE_14__*) #1

declare dso_local i32 @ntb_link_enable(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @ntb_link_event(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
