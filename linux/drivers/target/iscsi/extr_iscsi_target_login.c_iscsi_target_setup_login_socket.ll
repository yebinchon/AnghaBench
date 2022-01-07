; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsi_target_setup_login_socket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsi_target_setup_login_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_np = type { i32, %struct.iscsit_transport*, i32 }
%struct.iscsit_transport = type { i32 (%struct.iscsi_np.0*, %struct.sockaddr_storage*)* }
%struct.iscsi_np.0 = type opaque
%struct.sockaddr_storage = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_target_setup_login_socket(%struct.iscsi_np* %0, %struct.sockaddr_storage* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_np*, align 8
  %5 = alloca %struct.sockaddr_storage*, align 8
  %6 = alloca %struct.iscsit_transport*, align 8
  %7 = alloca i32, align 4
  store %struct.iscsi_np* %0, %struct.iscsi_np** %4, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %5, align 8
  %8 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %9 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.iscsit_transport* @iscsit_get_transport(i32 %10)
  store %struct.iscsit_transport* %11, %struct.iscsit_transport** %6, align 8
  %12 = load %struct.iscsit_transport*, %struct.iscsit_transport** %6, align 8
  %13 = icmp ne %struct.iscsit_transport* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %37

17:                                               ; preds = %2
  %18 = load %struct.iscsit_transport*, %struct.iscsit_transport** %6, align 8
  %19 = getelementptr inbounds %struct.iscsit_transport, %struct.iscsit_transport* %18, i32 0, i32 0
  %20 = load i32 (%struct.iscsi_np.0*, %struct.sockaddr_storage*)*, i32 (%struct.iscsi_np.0*, %struct.sockaddr_storage*)** %19, align 8
  %21 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %22 = bitcast %struct.iscsi_np* %21 to %struct.iscsi_np.0*
  %23 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %24 = call i32 %20(%struct.iscsi_np.0* %22, %struct.sockaddr_storage* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load %struct.iscsit_transport*, %struct.iscsit_transport** %6, align 8
  %29 = call i32 @iscsit_put_transport(%struct.iscsit_transport* %28)
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %37

31:                                               ; preds = %17
  %32 = load %struct.iscsit_transport*, %struct.iscsit_transport** %6, align 8
  %33 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %34 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %33, i32 0, i32 1
  store %struct.iscsit_transport* %32, %struct.iscsit_transport** %34, align 8
  %35 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %36 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %31, %27, %14
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.iscsit_transport* @iscsit_get_transport(i32) #1

declare dso_local i32 @iscsit_put_transport(%struct.iscsit_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
