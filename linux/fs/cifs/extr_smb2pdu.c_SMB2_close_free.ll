; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_close_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_close_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_rqst = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SMB2_close_free(%struct.smb_rqst* %0) #0 {
  %2 = alloca %struct.smb_rqst*, align 8
  store %struct.smb_rqst* %0, %struct.smb_rqst** %2, align 8
  %3 = load %struct.smb_rqst*, %struct.smb_rqst** %2, align 8
  %4 = icmp ne %struct.smb_rqst* %3, null
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load %struct.smb_rqst*, %struct.smb_rqst** %2, align 8
  %7 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %5
  %11 = load %struct.smb_rqst*, %struct.smb_rqst** %2, align 8
  %12 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cifs_small_buf_release(i32 %16)
  br label %18

18:                                               ; preds = %10, %5, %1
  ret void
}

declare dso_local i32 @cifs_small_buf_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
