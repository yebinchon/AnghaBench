; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_queue.c_cw1200_queue_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_queue.c_cw1200_queue_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_queue = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.cw1200_queue_item*, %struct.cw1200_queue_stats* }
%struct.cw1200_queue_item = type { i64, i32, %struct.sk_buff*, %struct.cw1200_txpriv }
%struct.sk_buff = type { i32 }
%struct.cw1200_txpriv = type { i32 }
%struct.cw1200_queue_stats = type { i32, i32 (i32, %struct.sk_buff*, %struct.cw1200_txpriv*)* }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_queue_remove(%struct.cw1200_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.cw1200_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cw1200_queue_item*, align 8
  %11 = alloca %struct.cw1200_queue_stats*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.cw1200_txpriv, align 4
  store %struct.cw1200_queue* %0, %struct.cw1200_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %14 = load %struct.cw1200_queue*, %struct.cw1200_queue** %3, align 8
  %15 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %14, i32 0, i32 10
  %16 = load %struct.cw1200_queue_stats*, %struct.cw1200_queue_stats** %15, align 8
  store %struct.cw1200_queue_stats* %16, %struct.cw1200_queue_stats** %11, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %12, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @cw1200_queue_parse_id(i32 %17, i64* %6, i64* %7, i64* %8, i64* %9)
  %19 = load %struct.cw1200_queue*, %struct.cw1200_queue** %3, align 8
  %20 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %19, i32 0, i32 9
  %21 = load %struct.cw1200_queue_item*, %struct.cw1200_queue_item** %20, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds %struct.cw1200_queue_item, %struct.cw1200_queue_item* %21, i64 %22
  store %struct.cw1200_queue_item* %23, %struct.cw1200_queue_item** %10, align 8
  %24 = load %struct.cw1200_queue*, %struct.cw1200_queue** %3, align 8
  %25 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %24, i32 0, i32 5
  %26 = call i32 @spin_lock_bh(i32* %25)
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.cw1200_queue*, %struct.cw1200_queue** %3, align 8
  %29 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.cw1200_queue*, %struct.cw1200_queue** %3, align 8
  %36 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %115

42:                                               ; preds = %2
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.cw1200_queue*, %struct.cw1200_queue** %3, align 8
  %45 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = zext i32 %46 to i64
  %48 = icmp uge i64 %43, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = call i32 @WARN_ON(i32 1)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %114

53:                                               ; preds = %42
  %54 = load %struct.cw1200_queue_item*, %struct.cw1200_queue_item** %10, align 8
  %55 = getelementptr inbounds %struct.cw1200_queue_item, %struct.cw1200_queue_item* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = call i32 @WARN_ON(i32 1)
  %61 = load i32, i32* @ENOENT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %113

63:                                               ; preds = %53
  %64 = load %struct.cw1200_queue_item*, %struct.cw1200_queue_item** %10, align 8
  %65 = getelementptr inbounds %struct.cw1200_queue_item, %struct.cw1200_queue_item* %64, i32 0, i32 3
  %66 = bitcast %struct.cw1200_txpriv* %13 to i8*
  %67 = bitcast %struct.cw1200_txpriv* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 8 %67, i64 4, i1 false)
  %68 = load %struct.cw1200_queue_item*, %struct.cw1200_queue_item** %10, align 8
  %69 = getelementptr inbounds %struct.cw1200_queue_item, %struct.cw1200_queue_item* %68, i32 0, i32 2
  %70 = load %struct.sk_buff*, %struct.sk_buff** %69, align 8
  store %struct.sk_buff* %70, %struct.sk_buff** %12, align 8
  %71 = load %struct.cw1200_queue_item*, %struct.cw1200_queue_item** %10, align 8
  %72 = getelementptr inbounds %struct.cw1200_queue_item, %struct.cw1200_queue_item* %71, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %72, align 8
  %73 = load %struct.cw1200_queue*, %struct.cw1200_queue** %3, align 8
  %74 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %74, align 8
  %77 = load %struct.cw1200_queue*, %struct.cw1200_queue** %3, align 8
  %78 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.cw1200_queue*, %struct.cw1200_queue** %3, align 8
  %82 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = load %struct.cw1200_queue_item*, %struct.cw1200_queue_item** %10, align 8
  %86 = getelementptr inbounds %struct.cw1200_queue_item, %struct.cw1200_queue_item* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %86, align 8
  %89 = load %struct.cw1200_queue_item*, %struct.cw1200_queue_item** %10, align 8
  %90 = getelementptr inbounds %struct.cw1200_queue_item, %struct.cw1200_queue_item* %89, i32 0, i32 1
  %91 = load %struct.cw1200_queue*, %struct.cw1200_queue** %3, align 8
  %92 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %91, i32 0, i32 6
  %93 = call i32 @list_move(i32* %90, i32* %92)
  %94 = load %struct.cw1200_queue*, %struct.cw1200_queue** %3, align 8
  %95 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %63
  %99 = load %struct.cw1200_queue*, %struct.cw1200_queue** %3, align 8
  %100 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.cw1200_queue*, %struct.cw1200_queue** %3, align 8
  %103 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = ashr i32 %104, 1
  %106 = icmp sle i32 %101, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %98
  %108 = load %struct.cw1200_queue*, %struct.cw1200_queue** %3, align 8
  %109 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %108, i32 0, i32 4
  store i32 0, i32* %109, align 8
  %110 = load %struct.cw1200_queue*, %struct.cw1200_queue** %3, align 8
  %111 = call i32 @__cw1200_queue_unlock(%struct.cw1200_queue* %110)
  br label %112

112:                                              ; preds = %107, %98, %63
  br label %113

113:                                              ; preds = %112, %59
  br label %114

114:                                              ; preds = %113, %49
  br label %115

115:                                              ; preds = %114, %39
  %116 = load %struct.cw1200_queue*, %struct.cw1200_queue** %3, align 8
  %117 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %116, i32 0, i32 5
  %118 = call i32 @spin_unlock_bh(i32* %117)
  %119 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %120 = icmp ne %struct.sk_buff* %119, null
  br i1 %120, label %121, label %130

121:                                              ; preds = %115
  %122 = load %struct.cw1200_queue_stats*, %struct.cw1200_queue_stats** %11, align 8
  %123 = getelementptr inbounds %struct.cw1200_queue_stats, %struct.cw1200_queue_stats* %122, i32 0, i32 1
  %124 = load i32 (i32, %struct.sk_buff*, %struct.cw1200_txpriv*)*, i32 (i32, %struct.sk_buff*, %struct.cw1200_txpriv*)** %123, align 8
  %125 = load %struct.cw1200_queue_stats*, %struct.cw1200_queue_stats** %11, align 8
  %126 = getelementptr inbounds %struct.cw1200_queue_stats, %struct.cw1200_queue_stats* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %129 = call i32 %124(i32 %127, %struct.sk_buff* %128, %struct.cw1200_txpriv* %13)
  br label %130

130:                                              ; preds = %121, %115
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @cw1200_queue_parse_id(i32, i64*, i64*, i64*, i64*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @__cw1200_queue_unlock(%struct.cw1200_queue*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
