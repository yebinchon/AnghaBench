; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2inode.c_free_set_inf_compound.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2inode.c_free_set_inf_compound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_rqst = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smb_rqst*)* @free_set_inf_compound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_set_inf_compound(%struct.smb_rqst* %0) #0 {
  %2 = alloca %struct.smb_rqst*, align 8
  store %struct.smb_rqst* %0, %struct.smb_rqst** %2, align 8
  %3 = load %struct.smb_rqst*, %struct.smb_rqst** %2, align 8
  %4 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %3, i64 1
  %5 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.smb_rqst*, %struct.smb_rqst** %2, align 8
  %10 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %9, i64 1
  %11 = call i32 @SMB2_set_info_free(%struct.smb_rqst* %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.smb_rqst*, %struct.smb_rqst** %2, align 8
  %14 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %13, i64 2
  %15 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.smb_rqst*, %struct.smb_rqst** %2, align 8
  %20 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %19, i64 2
  %21 = call i32 @SMB2_close_free(%struct.smb_rqst* %20)
  br label %22

22:                                               ; preds = %18, %12
  ret void
}

declare dso_local i32 @SMB2_set_info_free(%struct.smb_rqst*) #1

declare dso_local i32 @SMB2_close_free(%struct.smb_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
