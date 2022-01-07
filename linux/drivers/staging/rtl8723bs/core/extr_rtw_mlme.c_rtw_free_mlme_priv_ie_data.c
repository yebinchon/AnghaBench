
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_priv {int p2p_assoc_req_ie_len; int p2p_assoc_req_ie; int p2p_go_probe_resp_ie_len; int p2p_go_probe_resp_ie; int p2p_probe_resp_ie_len; int p2p_probe_resp_ie; int p2p_probe_req_ie_len; int p2p_probe_req_ie; int p2p_beacon_ie_len; int p2p_beacon_ie; int wps_assoc_resp_ie_len; int wps_assoc_resp_ie; int wps_probe_resp_ie_len; int wps_probe_resp_ie; int wps_probe_req_ie_len; int wps_probe_req_ie; int wps_beacon_ie_len; int wps_beacon_ie; int assoc_rsp_len; int assoc_rsp; int assoc_req_len; int assoc_req; } ;


 int rtw_buf_free (int *,int *) ;
 int rtw_free_mlme_ie_data (int *,int *) ;

void rtw_free_mlme_priv_ie_data(struct mlme_priv *pmlmepriv)
{
 rtw_buf_free(&pmlmepriv->assoc_req, &pmlmepriv->assoc_req_len);
 rtw_buf_free(&pmlmepriv->assoc_rsp, &pmlmepriv->assoc_rsp_len);
 rtw_free_mlme_ie_data(&pmlmepriv->wps_beacon_ie, &pmlmepriv->wps_beacon_ie_len);
 rtw_free_mlme_ie_data(&pmlmepriv->wps_probe_req_ie, &pmlmepriv->wps_probe_req_ie_len);
 rtw_free_mlme_ie_data(&pmlmepriv->wps_probe_resp_ie, &pmlmepriv->wps_probe_resp_ie_len);
 rtw_free_mlme_ie_data(&pmlmepriv->wps_assoc_resp_ie, &pmlmepriv->wps_assoc_resp_ie_len);

 rtw_free_mlme_ie_data(&pmlmepriv->p2p_beacon_ie, &pmlmepriv->p2p_beacon_ie_len);
 rtw_free_mlme_ie_data(&pmlmepriv->p2p_probe_req_ie, &pmlmepriv->p2p_probe_req_ie_len);
 rtw_free_mlme_ie_data(&pmlmepriv->p2p_probe_resp_ie, &pmlmepriv->p2p_probe_resp_ie_len);
 rtw_free_mlme_ie_data(&pmlmepriv->p2p_go_probe_resp_ie, &pmlmepriv->p2p_go_probe_resp_ie_len);
 rtw_free_mlme_ie_data(&pmlmepriv->p2p_assoc_req_ie, &pmlmepriv->p2p_assoc_req_ie_len);
}
