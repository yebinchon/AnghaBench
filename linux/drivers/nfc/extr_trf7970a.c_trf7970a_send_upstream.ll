; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_send_upstream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_send_upstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trf7970a = type { i32, %struct.TYPE_5__*, i32, i32, i32 (i32, i32, %struct.TYPE_5__*)*, i32, i32, i32* }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"trf7970a rx data: \00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@TRF7970A_ST_IDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Abort process complete\0A\00", align 1
@ECANCELED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trf7970a*)* @trf7970a_send_upstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trf7970a_send_upstream(%struct.trf7970a* %0) #0 {
  %2 = alloca %struct.trf7970a*, align 8
  store %struct.trf7970a* %0, %struct.trf7970a** %2, align 8
  %3 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %4 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %3, i32 0, i32 7
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @dev_kfree_skb_any(i32* %5)
  %7 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %8 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %7, i32 0, i32 7
  store i32* null, i32** %8, align 8
  %9 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %10 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %37

13:                                               ; preds = %1
  %14 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %15 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = call i32 @IS_ERR(%struct.TYPE_5__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %13
  %20 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %21 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %26 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %27 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %32 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @print_hex_dump_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %25, i32 16, i32 1, i32 %30, i32 %35, i32 0)
  br label %37

37:                                               ; preds = %24, %19, %13, %1
  %38 = load i32, i32* @TRF7970A_ST_IDLE, align 4
  %39 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %40 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  %41 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %42 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %37
  %46 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %47 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %51 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = call i32 @IS_ERR(%struct.TYPE_5__* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %45
  %56 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %57 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = call i32 @kfree_skb(%struct.TYPE_5__* %58)
  %60 = load i32, i32* @ECANCELED, align 4
  %61 = sub nsw i32 0, %60
  %62 = call %struct.TYPE_5__* @ERR_PTR(i32 %61)
  %63 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %64 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %63, i32 0, i32 1
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %64, align 8
  br label %65

65:                                               ; preds = %55, %45
  %66 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %67 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %37
  %69 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %70 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %69, i32 0, i32 4
  %71 = load i32 (i32, i32, %struct.TYPE_5__*)*, i32 (i32, i32, %struct.TYPE_5__*)** %70, align 8
  %72 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %73 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %76 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %79 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = call i32 %71(i32 %74, i32 %77, %struct.TYPE_5__* %80)
  %82 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %83 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %82, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %83, align 8
  ret void
}

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @IS_ERR(%struct.TYPE_5__*) #1

declare dso_local i32 @print_hex_dump_debug(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @kfree_skb(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
