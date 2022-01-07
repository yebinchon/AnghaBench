; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_scan_periodic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_scan_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { i32, i32, i32*, %struct.TYPE_8__*, %union.ehci_shadow* }
%struct.TYPE_8__ = type { i32 }
%union.ehci_shadow = type { i32* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, %union.ehci_shadow }

@.str = private unnamed_addr constant [36 x i8] c"corrupt type %d frame %d shadow %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxu_hcd*)* @scan_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_periodic(%struct.oxu_hcd* %0) #0 {
  %2 = alloca %struct.oxu_hcd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.ehci_shadow, align 8
  %9 = alloca %union.ehci_shadow*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %union.ehci_shadow, align 8
  %13 = alloca i32, align 4
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %2, align 8
  %14 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %15 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = shl i32 %16, 3
  store i32 %17, i32* %6, align 4
  %18 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %19 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %22 = call %struct.TYPE_10__* @oxu_to_hcd(%struct.oxu_hcd* %21)
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @HC_IS_RUNNING(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %29 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %28, i32 0, i32 3
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = call i32 @readl(i32* %31)
  store i32 %32, i32* %4, align 4
  br label %38

33:                                               ; preds = %1
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %34, %35
  %37 = sub i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %33, %27
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %4, align 4
  %41 = urem i32 %40, %39
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %162, %38
  %43 = load i32, i32* %5, align 4
  %44 = lshr i32 %43, 3
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %4, align 4
  %47 = lshr i32 %46, 3
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, 7
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %42
  br label %53

53:                                               ; preds = %125, %52
  %54 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %55 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %54, i32 0, i32 4
  %56 = load %union.ehci_shadow*, %union.ehci_shadow** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %union.ehci_shadow, %union.ehci_shadow* %56, i64 %58
  store %union.ehci_shadow* %59, %union.ehci_shadow** %9, align 8
  %60 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %61 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32* %65, i32** %11, align 8
  %66 = load %union.ehci_shadow*, %union.ehci_shadow** %9, align 8
  %67 = bitcast %union.ehci_shadow* %66 to i32**
  %68 = load i32*, i32** %67, align 8
  %69 = bitcast %union.ehci_shadow* %8 to i32**
  store i32* %68, i32** %69, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @Q_NEXT_TYPE(i32 %71)
  store i32 %72, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %126, %53
  %74 = bitcast %union.ehci_shadow* %8 to i32**
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %127

77:                                               ; preds = %73
  %78 = load i32, i32* %10, align 4
  switch i32 %78, label %113 [
    i32 128, label %79
  ]

79:                                               ; preds = %77
  %80 = bitcast %union.ehci_shadow* %8 to %struct.TYPE_9__**
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = call %struct.TYPE_9__* @qh_get(%struct.TYPE_9__* %81)
  %83 = bitcast %union.ehci_shadow* %12 to %struct.TYPE_9__**
  store %struct.TYPE_9__* %82, %struct.TYPE_9__** %83, align 8
  %84 = bitcast %union.ehci_shadow* %8 to %struct.TYPE_9__**
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @Q_NEXT_TYPE(i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = bitcast %union.ehci_shadow* %8 to %struct.TYPE_9__**
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  %92 = bitcast %union.ehci_shadow* %8 to i8*
  %93 = bitcast %union.ehci_shadow* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 8 %93, i64 8, i1 false)
  %94 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %95 = bitcast %union.ehci_shadow* %12 to %struct.TYPE_9__**
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = call i32 @qh_completions(%struct.oxu_hcd* %94, %struct.TYPE_9__* %96)
  store i32 %97, i32* %7, align 4
  %98 = bitcast %union.ehci_shadow* %12 to %struct.TYPE_9__**
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = call i32 @list_empty(i32* %100)
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %79
  %105 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %106 = bitcast %union.ehci_shadow* %12 to %struct.TYPE_9__**
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = call i32 @intr_deschedule(%struct.oxu_hcd* %105, %struct.TYPE_9__* %107)
  br label %109

109:                                              ; preds = %104, %79
  %110 = bitcast %union.ehci_shadow* %12 to %struct.TYPE_9__**
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = call i32 @qh_put(%struct.TYPE_9__* %111)
  br label %121

113:                                              ; preds = %77
  %114 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %3, align 4
  %117 = bitcast %union.ehci_shadow* %8 to i32**
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @oxu_dbg(%struct.oxu_hcd* %114, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %115, i32 %116, i32* %118)
  %120 = bitcast %union.ehci_shadow* %8 to i32**
  store i32* null, i32** %120, align 8
  br label %121

121:                                              ; preds = %113, %109
  %122 = load i32, i32* %7, align 4
  %123 = call i64 @unlikely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %53

126:                                              ; preds = %121
  br label %73

127:                                              ; preds = %73
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* %4, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %156

131:                                              ; preds = %127
  %132 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %133 = call %struct.TYPE_10__* @oxu_to_hcd(%struct.oxu_hcd* %132)
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @HC_IS_RUNNING(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %131
  br label %163

139:                                              ; preds = %131
  %140 = load i32, i32* %5, align 4
  %141 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %142 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %144 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %143, i32 0, i32 3
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = call i32 @readl(i32* %146)
  %148 = load i32, i32* %6, align 4
  %149 = urem i32 %147, %148
  store i32 %149, i32* %13, align 4
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* %13, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %139
  br label %163

154:                                              ; preds = %139
  %155 = load i32, i32* %13, align 4
  store i32 %155, i32* %4, align 4
  br label %162

156:                                              ; preds = %127
  %157 = load i32, i32* %5, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* %5, align 4
  %161 = urem i32 %160, %159
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %156, %154
  br label %42

163:                                              ; preds = %153, %138
  ret void
}

declare dso_local i64 @HC_IS_RUNNING(i32) #1

declare dso_local %struct.TYPE_10__* @oxu_to_hcd(%struct.oxu_hcd*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @Q_NEXT_TYPE(i32) #1

declare dso_local %struct.TYPE_9__* @qh_get(%struct.TYPE_9__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @qh_completions(%struct.oxu_hcd*, %struct.TYPE_9__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @intr_deschedule(%struct.oxu_hcd*, %struct.TYPE_9__*) #1

declare dso_local i32 @qh_put(%struct.TYPE_9__*) #1

declare dso_local i32 @oxu_dbg(%struct.oxu_hcd*, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
