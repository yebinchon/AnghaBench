; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_cifs_call_async.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_cifs_call_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mid_q_entry* (%struct.TCP_Server_Info*, %struct.smb_rqst*)* }
%struct.mid_q_entry = type { i32, i32, i32, i32*, i8*, i32*, i32* }
%struct.smb_rqst = type { i32 }
%struct.cifs_credits = type { i32, i32 }

@CIFS_OP_MASK = common dso_local global i32 0, align 4
@CIFS_HAS_CREDITS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MID_REQUEST_SUBMITTED = common dso_local global i32 0, align 4
@GlobalMid_Lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_call_async(%struct.TCP_Server_Info* %0, %struct.smb_rqst* %1, i32* %2, i32* %3, i32* %4, i8* %5, i32 %6, %struct.cifs_credits* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TCP_Server_Info*, align 8
  %11 = alloca %struct.smb_rqst*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.cifs_credits*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.mid_q_entry*, align 8
  %20 = alloca %struct.cifs_credits, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %10, align 8
  store %struct.smb_rqst* %1, %struct.smb_rqst** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.cifs_credits* %7, %struct.cifs_credits** %17, align 8
  %23 = bitcast %struct.cifs_credits* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 8, i1 false)
  %24 = load i32, i32* %16, align 4
  %25 = load i32, i32* @CIFS_OP_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %22, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* @CIFS_HAS_CREDITS, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %8
  %32 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %10, align 8
  %33 = load i32, i32* %16, align 4
  %34 = call i32 @wait_for_free_request(%struct.TCP_Server_Info* %32, i32 %33, i32* %21)
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* %18, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %18, align 4
  store i32 %38, i32* %9, align 4
  br label %145

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.cifs_credits, %struct.cifs_credits* %20, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = load i32, i32* %21, align 4
  %42 = getelementptr inbounds %struct.cifs_credits, %struct.cifs_credits* %20, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  br label %47

43:                                               ; preds = %8
  %44 = load %struct.cifs_credits*, %struct.cifs_credits** %17, align 8
  %45 = getelementptr inbounds %struct.cifs_credits, %struct.cifs_credits* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %21, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %10, align 8
  %49 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %48, i32 0, i32 2
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load i32, i32* %21, align 4
  %52 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %10, align 8
  %53 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %47
  %57 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %10, align 8
  %58 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %57, i32 0, i32 2
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %10, align 8
  %61 = load i32, i32* %22, align 4
  %62 = call i32 @add_credits_and_wake_if(%struct.TCP_Server_Info* %60, %struct.cifs_credits* %20, i32 %61)
  %63 = load i32, i32* @EAGAIN, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %9, align 4
  br label %145

65:                                               ; preds = %47
  %66 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %10, align 8
  %67 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %66, i32 0, i32 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load %struct.mid_q_entry* (%struct.TCP_Server_Info*, %struct.smb_rqst*)*, %struct.mid_q_entry* (%struct.TCP_Server_Info*, %struct.smb_rqst*)** %69, align 8
  %71 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %10, align 8
  %72 = load %struct.smb_rqst*, %struct.smb_rqst** %11, align 8
  %73 = call %struct.mid_q_entry* %70(%struct.TCP_Server_Info* %71, %struct.smb_rqst* %72)
  store %struct.mid_q_entry* %73, %struct.mid_q_entry** %19, align 8
  %74 = load %struct.mid_q_entry*, %struct.mid_q_entry** %19, align 8
  %75 = call i64 @IS_ERR(%struct.mid_q_entry* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %65
  %78 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %10, align 8
  %79 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %78, i32 0, i32 2
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %10, align 8
  %82 = load i32, i32* %22, align 4
  %83 = call i32 @add_credits_and_wake_if(%struct.TCP_Server_Info* %81, %struct.cifs_credits* %20, i32 %82)
  %84 = load %struct.mid_q_entry*, %struct.mid_q_entry** %19, align 8
  %85 = call i32 @PTR_ERR(%struct.mid_q_entry* %84)
  store i32 %85, i32* %9, align 4
  br label %145

86:                                               ; preds = %65
  %87 = load i32*, i32** %12, align 8
  %88 = load %struct.mid_q_entry*, %struct.mid_q_entry** %19, align 8
  %89 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %88, i32 0, i32 6
  store i32* %87, i32** %89, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = load %struct.mid_q_entry*, %struct.mid_q_entry** %19, align 8
  %92 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %91, i32 0, i32 5
  store i32* %90, i32** %92, align 8
  %93 = load i8*, i8** %15, align 8
  %94 = load %struct.mid_q_entry*, %struct.mid_q_entry** %19, align 8
  %95 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = load %struct.mid_q_entry*, %struct.mid_q_entry** %19, align 8
  %98 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %97, i32 0, i32 3
  store i32* %96, i32** %98, align 8
  %99 = load i32, i32* @MID_REQUEST_SUBMITTED, align 4
  %100 = load %struct.mid_q_entry*, %struct.mid_q_entry** %19, align 8
  %101 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = call i32 @spin_lock(i32* @GlobalMid_Lock)
  %103 = load %struct.mid_q_entry*, %struct.mid_q_entry** %19, align 8
  %104 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %103, i32 0, i32 1
  %105 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %10, align 8
  %106 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %105, i32 0, i32 3
  %107 = call i32 @list_add_tail(i32* %104, i32* %106)
  %108 = call i32 @spin_unlock(i32* @GlobalMid_Lock)
  %109 = load %struct.mid_q_entry*, %struct.mid_q_entry** %19, align 8
  %110 = call i32 @cifs_save_when_sent(%struct.mid_q_entry* %109)
  %111 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %10, align 8
  %112 = call i32 @cifs_in_send_inc(%struct.TCP_Server_Info* %111)
  %113 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %10, align 8
  %114 = load %struct.smb_rqst*, %struct.smb_rqst** %11, align 8
  %115 = load i32, i32* %16, align 4
  %116 = call i32 @smb_send_rqst(%struct.TCP_Server_Info* %113, i32 1, %struct.smb_rqst* %114, i32 %115)
  store i32 %116, i32* %18, align 4
  %117 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %10, align 8
  %118 = call i32 @cifs_in_send_dec(%struct.TCP_Server_Info* %117)
  %119 = load i32, i32* %18, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %86
  %122 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %10, align 8
  %123 = load %struct.mid_q_entry*, %struct.mid_q_entry** %19, align 8
  %124 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @revert_current_mid(%struct.TCP_Server_Info* %122, i32 %125)
  %127 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %10, align 8
  %128 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = sub nsw i32 %129, 2
  store i32 %130, i32* %128, align 4
  %131 = load %struct.mid_q_entry*, %struct.mid_q_entry** %19, align 8
  %132 = call i32 @cifs_delete_mid(%struct.mid_q_entry* %131)
  br label %133

133:                                              ; preds = %121, %86
  %134 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %10, align 8
  %135 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %134, i32 0, i32 2
  %136 = call i32 @mutex_unlock(i32* %135)
  %137 = load i32, i32* %18, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  store i32 0, i32* %9, align 4
  br label %145

140:                                              ; preds = %133
  %141 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %10, align 8
  %142 = load i32, i32* %22, align 4
  %143 = call i32 @add_credits_and_wake_if(%struct.TCP_Server_Info* %141, %struct.cifs_credits* %20, i32 %142)
  %144 = load i32, i32* %18, align 4
  store i32 %144, i32* %9, align 4
  br label %145

145:                                              ; preds = %140, %139, %77, %56, %37
  %146 = load i32, i32* %9, align 4
  ret i32 %146
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @wait_for_free_request(%struct.TCP_Server_Info*, i32, i32*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @add_credits_and_wake_if(%struct.TCP_Server_Info*, %struct.cifs_credits*, i32) #2

declare dso_local i64 @IS_ERR(%struct.mid_q_entry*) #2

declare dso_local i32 @PTR_ERR(%struct.mid_q_entry*) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @cifs_save_when_sent(%struct.mid_q_entry*) #2

declare dso_local i32 @cifs_in_send_inc(%struct.TCP_Server_Info*) #2

declare dso_local i32 @smb_send_rqst(%struct.TCP_Server_Info*, i32, %struct.smb_rqst*, i32) #2

declare dso_local i32 @cifs_in_send_dec(%struct.TCP_Server_Info*) #2

declare dso_local i32 @revert_current_mid(%struct.TCP_Server_Info*, i32) #2

declare dso_local i32 @cifs_delete_mid(%struct.mid_q_entry*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
