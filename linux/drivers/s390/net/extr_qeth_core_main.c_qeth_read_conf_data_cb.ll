; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_read_conf_data_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_read_conf_data_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i8*, i8*, i8* }
%struct.qeth_cmd_buffer = type { i64 }
%struct.qeth_node_desc = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"cfgunit\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@_ascebc = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32)* @qeth_read_conf_data_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_read_conf_data_cb(%struct.qeth_card* %0, %struct.qeth_cmd_buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.qeth_cmd_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qeth_node_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store %struct.qeth_cmd_buffer* %1, %struct.qeth_cmd_buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %11 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.qeth_node_desc*
  store %struct.qeth_node_desc* %13, %struct.qeth_node_desc** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %15 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %14, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = icmp ult i64 %17, 32
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %8, align 4
  br label %113

22:                                               ; preds = %3
  %23 = load %struct.qeth_node_desc*, %struct.qeth_node_desc** %7, align 8
  %24 = getelementptr inbounds %struct.qeth_node_desc, %struct.qeth_node_desc* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** @_ascebc, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 86
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %22
  %34 = load %struct.qeth_node_desc*, %struct.qeth_node_desc** %7, align 8
  %35 = getelementptr inbounds %struct.qeth_node_desc, %struct.qeth_node_desc* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** @_ascebc, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 77
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br label %44

44:                                               ; preds = %33, %22
  %45 = phi i1 [ false, %22 ], [ %43, %33 ]
  %46 = zext i1 %45 to i32
  %47 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %48 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.qeth_node_desc*, %struct.qeth_node_desc** %7, align 8
  %51 = getelementptr inbounds %struct.qeth_node_desc, %struct.qeth_node_desc* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = bitcast i32* %52 to i8**
  store i8** %53, i8*** %9, align 8
  %54 = load i8**, i8*** %9, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %58 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 4
  store i8* %56, i8** %59, align 8
  %60 = load i8**, i8*** %9, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %64 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  store i8* %62, i8** %65, align 8
  %66 = load %struct.qeth_node_desc*, %struct.qeth_node_desc** %7, align 8
  %67 = getelementptr inbounds %struct.qeth_node_desc, %struct.qeth_node_desc* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = bitcast i32* %68 to i8**
  store i8** %69, i8*** %9, align 8
  %70 = load i8**, i8*** %9, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 1
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %74 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  store i8* %72, i8** %75, align 8
  %76 = load %struct.qeth_node_desc*, %struct.qeth_node_desc** %7, align 8
  %77 = getelementptr inbounds %struct.qeth_node_desc, %struct.qeth_node_desc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 240
  br i1 %82, label %83, label %107

83:                                               ; preds = %44
  %84 = load %struct.qeth_node_desc*, %struct.qeth_node_desc** %7, align 8
  %85 = getelementptr inbounds %struct.qeth_node_desc, %struct.qeth_node_desc* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 240
  br i1 %90, label %91, label %107

91:                                               ; preds = %83
  %92 = load %struct.qeth_node_desc*, %struct.qeth_node_desc** %7, align 8
  %93 = getelementptr inbounds %struct.qeth_node_desc, %struct.qeth_node_desc* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = icmp sge i32 %97, 241
  br i1 %98, label %99, label %107

99:                                               ; preds = %91
  %100 = load %struct.qeth_node_desc*, %struct.qeth_node_desc** %7, align 8
  %101 = getelementptr inbounds %struct.qeth_node_desc, %struct.qeth_node_desc* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  %105 = load i32, i32* %104, align 4
  %106 = icmp sle i32 %105, 244
  br label %107

107:                                              ; preds = %99, %91, %83, %44
  %108 = phi i1 [ false, %91 ], [ false, %83 ], [ false, %44 ], [ %106, %99 ]
  %109 = zext i1 %108 to i32
  %110 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %111 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 4
  br label %113

113:                                              ; preds = %107, %19
  %114 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @qeth_notify_cmd(%struct.qeth_cmd_buffer* %114, i32 %115)
  %117 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %118 = call i32 @qeth_put_cmd(%struct.qeth_cmd_buffer* %117)
  ret void
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qeth_notify_cmd(%struct.qeth_cmd_buffer*, i32) #1

declare dso_local i32 @qeth_put_cmd(%struct.qeth_cmd_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
