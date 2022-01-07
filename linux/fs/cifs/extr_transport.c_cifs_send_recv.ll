; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_cifs_send_recv.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_cifs_send_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i32 }
%struct.smb_rqst = type { i32 }
%struct.kvec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_send_recv(i32 %0, %struct.cifs_ses* %1, %struct.smb_rqst* %2, i32* %3, i32 %4, %struct.kvec* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_ses*, align 8
  %9 = alloca %struct.smb_rqst*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.kvec*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.cifs_ses* %1, %struct.cifs_ses** %8, align 8
  store %struct.smb_rqst* %2, %struct.smb_rqst** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.kvec* %5, %struct.kvec** %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.smb_rqst*, %struct.smb_rqst** %9, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = load %struct.kvec*, %struct.kvec** %12, align 8
  %19 = call i32 @compound_send_recv(i32 %13, %struct.cifs_ses* %14, i32 %15, i32 1, %struct.smb_rqst* %16, i32* %17, %struct.kvec* %18)
  ret i32 %19
}

declare dso_local i32 @compound_send_recv(i32, %struct.cifs_ses*, i32, i32, %struct.smb_rqst*, i32*, %struct.kvec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
