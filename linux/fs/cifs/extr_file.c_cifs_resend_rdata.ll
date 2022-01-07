; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_resend_rdata.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_resend_rdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_readdata = type { i32, i32, %struct.cifs_credits, i32, %struct.TYPE_8__* }
%struct.cifs_credits = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.list_head = type { i32 }
%struct.cifs_aio_ctx = type { i32 }
%struct.TCP_Server_Info = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TCP_Server_Info*, i32, i32*, %struct.cifs_credits*)*, i32 (%struct.cifs_readdata*)* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TCP_Server_Info* }

@EAGAIN = common dso_local global i32 0, align 4
@cifs_uncached_readdata_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_readdata*, %struct.list_head*, %struct.cifs_aio_ctx*)* @cifs_resend_rdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_resend_rdata(%struct.cifs_readdata* %0, %struct.list_head* %1, %struct.cifs_aio_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cifs_readdata*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.cifs_aio_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cifs_credits, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TCP_Server_Info*, align 8
  store %struct.cifs_readdata* %0, %struct.cifs_readdata** %5, align 8
  store %struct.list_head* %1, %struct.list_head** %6, align 8
  store %struct.cifs_aio_ctx* %2, %struct.cifs_aio_ctx** %7, align 8
  %12 = load %struct.cifs_readdata*, %struct.cifs_readdata** %5, align 8
  %13 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %12, i32 0, i32 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.TYPE_7__* @tlink_tcon(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  store %struct.TCP_Server_Info* %21, %struct.TCP_Server_Info** %11, align 8
  br label %22

22:                                               ; preds = %123, %3
  %23 = load %struct.cifs_readdata*, %struct.cifs_readdata** %5, align 8
  %24 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %23, i32 0, i32 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %22
  %30 = load %struct.cifs_readdata*, %struct.cifs_readdata** %5, align 8
  %31 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %30, i32 0, i32 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = call i32 @cifs_reopen_file(%struct.TYPE_8__* %32, i32 1)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %123

39:                                               ; preds = %29
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %128

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %44, %22
  br label %46

46:                                               ; preds = %71, %45
  %47 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %11, align 8
  %48 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32 (%struct.TCP_Server_Info*, i32, i32*, %struct.cifs_credits*)*, i32 (%struct.TCP_Server_Info*, i32, i32*, %struct.cifs_credits*)** %50, align 8
  %52 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %11, align 8
  %53 = load %struct.cifs_readdata*, %struct.cifs_readdata** %5, align 8
  %54 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 %51(%struct.TCP_Server_Info* %52, i32 %55, i32* %8, %struct.cifs_credits* %9)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %129

60:                                               ; preds = %46
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.cifs_readdata*, %struct.cifs_readdata** %5, align 8
  %63 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ult i32 %61, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %11, align 8
  %68 = call i32 @add_credits_and_wake_if(%struct.TCP_Server_Info* %67, %struct.cifs_credits* %9, i32 0)
  %69 = call i32 @msleep(i32 1000)
  br label %70

70:                                               ; preds = %66, %60
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.cifs_readdata*, %struct.cifs_readdata** %5, align 8
  %74 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ult i32 %72, %75
  br i1 %76, label %46, label %77

77:                                               ; preds = %71
  %78 = load %struct.cifs_readdata*, %struct.cifs_readdata** %5, align 8
  %79 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %78, i32 0, i32 2
  %80 = bitcast %struct.cifs_credits* %79 to i8*
  %81 = bitcast %struct.cifs_credits* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 4 %81, i64 4, i1 false)
  %82 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %11, align 8
  %83 = load %struct.cifs_readdata*, %struct.cifs_readdata** %5, align 8
  %84 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %83, i32 0, i32 2
  %85 = load %struct.cifs_readdata*, %struct.cifs_readdata** %5, align 8
  %86 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @adjust_credits(%struct.TCP_Server_Info* %82, %struct.cifs_credits* %84, i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %110, label %91

91:                                               ; preds = %77
  %92 = load %struct.cifs_readdata*, %struct.cifs_readdata** %5, align 8
  %93 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %92, i32 0, i32 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32, i32* @EAGAIN, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %10, align 4
  br label %109

101:                                              ; preds = %91
  %102 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %11, align 8
  %103 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32 (%struct.cifs_readdata*)*, i32 (%struct.cifs_readdata*)** %105, align 8
  %107 = load %struct.cifs_readdata*, %struct.cifs_readdata** %5, align 8
  %108 = call i32 %106(%struct.cifs_readdata* %107)
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %101, %98
  br label %110

110:                                              ; preds = %109, %77
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %110
  %114 = load %struct.cifs_readdata*, %struct.cifs_readdata** %5, align 8
  %115 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %114, i32 0, i32 3
  %116 = load %struct.list_head*, %struct.list_head** %6, align 8
  %117 = call i32 @list_add_tail(i32* %115, %struct.list_head* %116)
  store i32 0, i32* %4, align 4
  br label %135

118:                                              ; preds = %110
  %119 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %11, align 8
  %120 = load %struct.cifs_readdata*, %struct.cifs_readdata** %5, align 8
  %121 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %120, i32 0, i32 2
  %122 = call i32 @add_credits_and_wake_if(%struct.TCP_Server_Info* %119, %struct.cifs_credits* %121, i32 0)
  br label %123

123:                                              ; preds = %118, %38
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @EAGAIN, align 4
  %126 = sub nsw i32 0, %125
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %22, label %128

128:                                              ; preds = %123, %42
  br label %129

129:                                              ; preds = %128, %59
  %130 = load %struct.cifs_readdata*, %struct.cifs_readdata** %5, align 8
  %131 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %130, i32 0, i32 1
  %132 = load i32, i32* @cifs_uncached_readdata_release, align 4
  %133 = call i32 @kref_put(i32* %131, i32 %132)
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %129, %113
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local %struct.TYPE_7__* @tlink_tcon(i32) #1

declare dso_local i32 @cifs_reopen_file(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @add_credits_and_wake_if(%struct.TCP_Server_Info*, %struct.cifs_credits*, i32) #1

declare dso_local i32 @msleep(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @adjust_credits(%struct.TCP_Server_Info*, %struct.cifs_credits*, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
