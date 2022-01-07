; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_smb_send.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_smb_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32 }
%struct.smb_hdr = type opaque
%struct.kvec = type { i8*, i32 }
%struct.smb_rqst = type { i32, %struct.kvec* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_send(%struct.TCP_Server_Info* %0, %struct.smb_hdr* %1, i32 %2) #0 {
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca %struct.smb_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x %struct.kvec], align 16
  %8 = alloca %struct.smb_rqst, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %4, align 8
  store %struct.smb_hdr* %1, %struct.smb_hdr** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %8, i32 0, i32 0
  store i32 2, i32* %9, align 8
  %10 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %8, i32 0, i32 1
  %11 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %7, i64 0, i64 0
  store %struct.kvec* %11, %struct.kvec** %10, align 8
  %12 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %13 = bitcast %struct.smb_hdr* %12 to i8*
  %14 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %7, i64 0, i64 0
  %15 = getelementptr inbounds %struct.kvec, %struct.kvec* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 16
  %16 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %7, i64 0, i64 0
  %17 = getelementptr inbounds %struct.kvec, %struct.kvec* %16, i32 0, i32 1
  store i32 4, i32* %17, align 8
  %18 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %19 = bitcast %struct.smb_hdr* %18 to i8*
  %20 = getelementptr inbounds i8, i8* %19, i64 4
  %21 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %7, i64 0, i64 1
  %22 = getelementptr inbounds %struct.kvec, %struct.kvec* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 16
  %23 = load i32, i32* %6, align 4
  %24 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %7, i64 0, i64 1
  %25 = getelementptr inbounds %struct.kvec, %struct.kvec* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %27 = call i32 @__smb_send_rqst(%struct.TCP_Server_Info* %26, i32 1, %struct.smb_rqst* %8)
  ret i32 %27
}

declare dso_local i32 @__smb_send_rqst(%struct.TCP_Server_Info*, i32, %struct.smb_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
