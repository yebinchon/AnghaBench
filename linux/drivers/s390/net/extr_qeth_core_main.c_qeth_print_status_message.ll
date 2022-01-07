; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_print_status_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_print_status_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%02x%02x\00", align 1
@_ebcasc = common dso_local global i64* null, align 8
@QETH_MCL_LENGTH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Device is a%s card%s%s%s\0Awith link type %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" (level: \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c")\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qeth_print_status_message(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %3 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %4 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %123 [
    i32 130, label %7
    i32 129, label %7
    i32 128, label %7
    i32 131, label %34
  ]

7:                                                ; preds = %1, %1, %1
  %8 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %9 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %7
  %16 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %17 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %21 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %27 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sprintf(i32* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %31)
  br label %134

33:                                               ; preds = %7
  br label %34

34:                                               ; preds = %1, %33
  %35 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %36 = call i32 @IS_VM_NIC(%struct.qeth_card* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %40 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 128
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %122

47:                                               ; preds = %38, %34
  %48 = load i64*, i64** @_ebcasc, align 8
  %49 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %50 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %48, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i8
  %59 = sext i8 %58 to i32
  %60 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %61 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %59, i32* %64, align 4
  %65 = load i64*, i64** @_ebcasc, align 8
  %66 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %67 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %65, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i8
  %76 = sext i8 %75 to i32
  %77 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %78 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 %76, i32* %81, align 4
  %82 = load i64*, i64** @_ebcasc, align 8
  %83 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %84 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %82, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i8
  %93 = sext i8 %92 to i32
  %94 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %95 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  store i32 %93, i32* %98, align 4
  %99 = load i64*, i64** @_ebcasc, align 8
  %100 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %101 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %99, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i8
  %110 = sext i8 %109 to i32
  %111 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %112 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  store i32 %110, i32* %115, align 4
  %116 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %117 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* @QETH_MCL_LENGTH, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32 0, i32* %121, align 4
  br label %122

122:                                              ; preds = %47, %38
  br label %134

123:                                              ; preds = %1
  %124 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %125 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = bitcast i32* %128 to i8*
  %130 = load i64, i64* @QETH_MCL_LENGTH, align 8
  %131 = add i64 %130, 1
  %132 = trunc i64 %131 to i32
  %133 = call i32 @memset(i8* %129, i32 0, i32 %132)
  br label %134

134:                                              ; preds = %123, %122, %15
  %135 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %136 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %135, i32 0, i32 1
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %140 = call i32 @qeth_get_cardname(%struct.qeth_card* %139)
  %141 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %142 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %150 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %151 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %134
  %158 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %159 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = bitcast i32* %161 to i8*
  br label %164

163:                                              ; preds = %134
  br label %164

164:                                              ; preds = %163, %157
  %165 = phi i8* [ %162, %157 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %163 ]
  %166 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %167 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %175 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %176 = call i32 @qeth_get_cardname_short(%struct.qeth_card* %175)
  %177 = call i32 @dev_info(i32* %138, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %140, i8* %149, i8* %165, i8* %174, i32 %176)
  ret void
}

declare dso_local i32 @sprintf(i32*, i8*, i32, i32) #1

declare dso_local i32 @IS_VM_NIC(%struct.qeth_card*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @qeth_get_cardname(%struct.qeth_card*) #1

declare dso_local i32 @qeth_get_cardname_short(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
